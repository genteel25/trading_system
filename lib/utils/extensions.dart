extension StringExtension on String {
  String toFixedDecimal(int fractionDigits) =>
      double.parse(this).toStringAsFixed(fractionDigits);

  bool checkIfGreaterThanAnother(String another) =>
      double.parse(this) >= double.parse(another);

  String separateWithComma() => replaceAllMapped(
      RegExp(r'(\d{1,3}(?=(\d{3})+(?!\d)))'), (Match m) => '${m[1]},');
  String percentageChangeInNewAndPreviousPrice(String previousPrice) {
    String change = (((double.parse(this) - double.parse(previousPrice)) /
                double.parse(previousPrice)) *
            100)
        .toStringAsFixed(2);
    String newChange = change == "infinity" ? "0.00" : change;
    return newChange.split("").first == '-' ? newChange : "+$change";
  }

  bool checkIfThereIsNegativeChangeBetweenTwoPrices(String previousPrice) =>
      double.parse(this) < double.parse(previousPrice);

  calculatePriceQuantityProduct(String quantity) =>
      (double.parse(this) * double.parse(quantity)).toStringAsFixed(2);
}

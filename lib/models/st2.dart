class Expense {
  final String symbol;
  final String company;
  final double price;

  Expense({this.symbol, this.company, this.price});

  static List<Expense> getAll() {
    List<Expense> exp = List<Expense>();
    exp.add(Expense(company: "Food", symbol: "Apple", price: 258));
    exp.add(Expense(company: "Bills", symbol: "Electricity", price: 800));
//    stocks.add(Stock(company: "General Electronic", symbol: "Ge", price: 56));
//    stocks.add(Stock(company: "Home Deopt", symbol: "HE", price: 178));
//    stocks.add(Stock(company: "Facebook", symbol: "FB", price: 200));
//    stocks.add(Stock(company: "Microsoft", symbol: "MSOFT", price: 400));
    return exp;
  }
}

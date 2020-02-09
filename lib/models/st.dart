class Stock {
  final String symbol;
  final String company;
  final double price;

  Stock({this.symbol, this.company, this.price});

  static List<Stock> getAll() {
    List<Stock> stocks = List<Stock>();
    stocks.add(Stock(company: "Apple Computers", symbol: "Apple", price: 258));
    stocks.add(Stock(company: "Alphabet", symbol: "ALPH", price: 800));
    stocks.add(Stock(company: "General Electronics", symbol: "Ge", price: 56));
    stocks.add(Stock(company: "Home Deopt", symbol: "HE", price: 178));
    stocks.add(Stock(company: "Facebook", symbol: "FB", price: 200));
    stocks.add(Stock(company: "Microsoft", symbol: "MSOFT", price: 400));
    return stocks;
  }
}

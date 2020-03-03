CREATE TABLE "03032020".orders (
   ID serial NOT NULL PRIMARY KEY,
   info json NOT NULL
);
INSERT INTO orders (info)
VALUES
   (
      '{ "customer": "John Doe", "items": {"product": " ","qty": 6}}'
   ),
   (
      '{ "customer": "Lily Bush", "items": {"product": "Diaper","qty": 24}}'
   ),
   (
      '{ "customer": "Josh William", "items": {"product": "Toy Car","qty": 1}}'
   ),
   (
      '{ "customer": "Mary Clark", "items": {"product": "Toy Train","qty": 2}}'
   ),
      (
      '{ "customer": "Joseph G. Cedeno", "items": {"product": "Coke","qty": 6}}'
   ),
   (
      '{ "customer": "Joseph G. Cedeno", "items": {"product": "Diaper","qty": 24}}'
   ),
   (
      '{ "customer": "Joseph G. Cedeno", "items": {"product": "Beer","qty": 10}}'
   ),
   (
      '{ "customer": "Joseph G. Cedeno", "items": {"product": "Toy ","qty": 2}}'
   ),
   (
      '{ "customer": "Joseph G. Cedeno", "items": {"product": "Diaper","qty": 2}}'
   );
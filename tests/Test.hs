import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 58 92 13 13 8
  expect (score signalcase_1 == 141)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 98 105 14 5 5
  expect (score signalcase_2 == 254)
  expect (classify signalcase_2 == "accept")
  let signalcase_3 = Signal 68 70 11 25 6
  expect (score signalcase_3 == 91)
  expect (classify signalcase_3 == "review")

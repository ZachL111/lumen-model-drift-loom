import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 81 89 11 18 4
  expect (score signalcase_1 == 119)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 99 78 27 15 8
  expect (score signalcase_2 == 118)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 102 88 9 25 8
  expect (score signalcase_3 == 146)
  expect (classify signalcase_3 == "review")
  let domainReview = ReviewItem 50 38 13 90
  expect (reviewScore domainReview == 189)
  expect (reviewLane domainReview == "ship")

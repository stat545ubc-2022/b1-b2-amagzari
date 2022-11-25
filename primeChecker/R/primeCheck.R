#' Prime number checker
#'
#' This function takes a number as argument. It returns TRUE if it is a prime number, and FALSE otherwise.
#'
#' @param number
#' The argument is named so because it is indeed a number that we would like to check whether it is prime or not.
#'
#' @return TRUE is number is prime, and FALSE otherwise.
#'
#' @export
#'
#' @examples
#' primeCheck(1)
#' primeCheck(3)
#' primeCheck(20)
#' primeCheck(101)
#'
primeCheck <- function(number) {

  if (number == 1) {
    FALSE

  } else {

    count = 0

    for (i in 2:number) {

      if (number %% i == 0){
        count = count + 1
      }
    }

    if (count == 1) {
      TRUE
    } else {
      FALSE
    }
  }
}

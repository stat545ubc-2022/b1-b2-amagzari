Assignment B1
================
Ali Magzari
2022-11-10

### Loading necessary packages

*Note that some may not be needed*

``` r
suppressPackageStartupMessages(library(palmerpenguins))
suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(testthat))
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(gapminder))
suppressPackageStartupMessages(library(digest))
```

### Exercises 1 and 2: Make and document the function

``` r
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
#' primeCheck(1) returns FALSE
#' primeCheck(3) returns TRUE
#' primeCheck(20) returns FALSE
#' primeCheck(101) returns TRUE
#' 
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
```

### Exercise 3: Include examples

Is 5 a prime number?

``` r
primeCheck(5)
```

    ## [1] TRUE

Yes, it is.  
Is 10 a prime number?

``` r
primeCheck(10)
```

    ## [1] FALSE

No, it is not!  
Is “3” a prime number?

``` r
primeCheck("3")
```

    ## Error in number%%i: non-numeric argument to binary operator

Although **3** is a prime number, **“3”** is not a numeric argument,
which explaims the error above.

### Exercise 4: Test the function

``` r
test_that("Basic testing", {
  # 97 is a prime number, hence the function returns TRUE
  expect_equal(primeCheck(97), TRUE)
  # 24 is not a prime number, hence the function returns FALSE
  expect_equal(primeCheck(24), FALSE)
  # c(12,25) is not a single number, hence we stumble upon an error
  expect_error(primeCheck(c(12,25)))
  # "3" is non-numeric, hence we stumble upon an error
  expect_error(primeCheck("3"))
})
```

    ## Test passed 😀

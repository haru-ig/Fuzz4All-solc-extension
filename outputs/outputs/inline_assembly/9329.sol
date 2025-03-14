pragma solidity ^0.8.0;
contract A {
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint constant ONE = 7;
   uint constant NINE = 9;
   uint constant ONE_THIRD;
   uint constant TEN_THIRD;
   uint constant TWO_THIRDS;
   uint constant FIVE_THIRD;
   function getNum1() public returns(uint) {
      one = MAX_INTEGER / 2;
      return (r + 5) + one;
   }
   function getNum2() public returns(uint) {
      r = ((MAX_INTEGER / 2) + RANGE) - 1;
      if (r < 2)
         return (r + ONE_THIRD) - 2 * (r % TWO_THIRDS - ONE_THIRD) + (ONE - r);
      if (r > 9)
         return (NINE - ((r % TWO_THIRDS + ONE_THIRD) - r % TWO_THIRDS) + (ONE + r % TWO_THIRDS));
      return (r + TEN_THIRD) * 2 + (r % TWO_THIRDS - ONE_THIRD) + (ONE + r % TWO_THIRDS);
   }
   function getNum3() public returns(uint) {
      return ((ONE  - r) + ONE_THIRD) - 2 * r - (ONE - r) == 1 + 2 * (NINE - r % 2) - r;
   }
}

/** The compiler can be used to automatically generate different execution paths. It gives a great way to evaluate the impact of different situations and to choose the optimal execution path. In fact it can be used as a way to control the flow of logic through optimization.

Inline Assembly allows the programmer to perform computations, rather than performing them one-by-one. For this reason, the compiler uses a series of loops to optimize them. This way the optimizer can skip unimportant iterations for each branch. It also improves the performance.

However, inline assembly is not efficient in terms of its size. It is also subject to certain limitations. For example, you cannot use external data structures like static arrays. Moreover, unlike C, it does not allow the programmer to change variables in

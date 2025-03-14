pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
 uint constant d = 4 * c;
    function subtract(uint x) internal pure returns (uint) {
     if(x < d) {
          return x * c;
     }
     if(x < c) {
          return c;
     }
     if(x < 2 * c) {
          return c * c * c;
     }
    }
    function power(uint x) internal pure returns (uint) {
     if(x < c) {
          return 2* c;
     }
     if(x < 3 * c) {
          return c* c*c  * 100;
     }
     if(x < 4 * c) {
          return 1000;
     }
     if(x < 12 * c)
      return 1000* c* x*c;
     if(x < 16 * c)
     return 1000 * c*x*c* x;
     if(x < 24 * c)
     return 1000 * c *c*x * x* c;
     if(x < 32 * c)
     return 1000 * c *c*x*x* c* x* c;
     if(x < 40 * c)
     return 1000 * c *c*x *x *x * x * c* x*c;
     if(x < 48 * c)
     return 1000 * c *c*x*x*x * x *x *c *x*c;

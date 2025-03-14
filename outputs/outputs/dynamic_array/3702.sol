pragma solidity ^0.8.0;
contract G {
    constructor(uint8 p_a) {
        a = p_a;
    }
    uint8 public a = 42;
    event Log(uint16, uint16);
    function g(uint8 x) public {
       if(a % 3 == 2) { b = 2 * a; } else
       {
          emit Log(a, b);

         }
         x -= 1;
    }
    function h() public {
       g(b);
       a = b;
    }

}

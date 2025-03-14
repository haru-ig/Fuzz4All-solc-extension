pragma solidity ^0.8.0;
contract L43 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function set(uint _x) public {
        x = _x;
    }
    function use() public {
        set(x + 10);
    }
} */

pragma solidity ^0.8.0;
contract L30 {
   uint x = 10;
   modifier modifyCalled {
      x = x + 15;
      x = x * 2;
      x = x + 5;
      _;
   }
   modifier modifyCalled2 {
      x = x + 15;
      x = x * 25;
      x = x + 10;
      _;
   }
   function use() public modifyCalled {
      x = 5;
      modifier modifyCalled3 {
         x = x + 15;
         x = x * 2;
         x = x + 15;
         _;
      }
      use2();
      use3();
      use2();
      use3();
   }
   function use2() public modifyCalled2 {
      use3();
   }
   function use3() public modifyCalled3 {
      use3();
   }
}

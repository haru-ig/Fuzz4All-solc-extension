pragma solidity ^0.8.0;
contract L {
   function f() public returns (uint8 x) {
       x = 8;
   }
}
contract C {
    function f() external returns(uint8 x) {
        x = 11;
    }
}

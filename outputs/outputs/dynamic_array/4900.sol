pragma solidity ^0.8.0;
contract Test64 {
 uint[64] internal x;
 function foo() public {
     delete(x);
 }
}

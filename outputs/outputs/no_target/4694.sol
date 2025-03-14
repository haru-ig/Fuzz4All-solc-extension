pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
e = a;
require(a > 0);
e = 0;
 }
address public e;
}

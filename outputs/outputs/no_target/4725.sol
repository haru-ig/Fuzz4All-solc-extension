pragma solidity ^0.8.0;
contract B {}
contract C is B {
constructor(address b) public B() {
 d = b;
}
address public d;
}

pragma solidity ^0.8.0;
uint256 s = 123;
uint256[] mem;
address addr;
constructor () {
    memoryTest1();
    address_test1(0);
}
function memoryTest1() public {
    emit Log();
}
function address_test1(uint256 input) public {
    addr = addr;
}

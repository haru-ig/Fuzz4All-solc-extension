pragma solidity ^0.8.0;
contract A {
    uint constant d = 10;
    uint constant r = 10;
    uint h() public returns (uint,uint) {
        return (d,r);
    }
}

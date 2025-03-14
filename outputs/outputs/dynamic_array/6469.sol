pragma solidity ^0.8.0;
interface aInterface {
    function doSomething(uint256 a) returns (uint256);
}

contract c {
    function g() public returns(uint16) {
        aInterface a = aInterface(0x111);
        uint16 a1 = a.doSomething(2);
        return a1;
    }
}

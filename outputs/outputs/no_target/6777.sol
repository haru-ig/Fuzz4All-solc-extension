pragma solidity ^0.8.0;
contract TestMutated5 {
    address c1;
    address c2;
    function testAdd1() public pure returns (uint) {
        return add(c1, c2);
    }
    function testAdd2() public pure returns (uint) {
        c1 = msg.sender;
        c2 = msg.sender;
        return add(c1, c2);
    }
}

pragma experimental ABIEncoderV2;

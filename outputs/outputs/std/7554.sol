pragma solidity ^0.8.0;

pragma abicoder v2;

import './Array.sol';
contract UseNew{
    function test() public pure returns (uint) {
        Array.uint arr = new Array.uint[](2);
        bytes memory bs = "0xfe";
        bytes memory bsh = "0xfe";
        bytes memory bsc = sha3(bs);
        bytes memory bsbsc = sha3(bs);
        Array.integer a = new Array.integer[](3, 5);
        a.push(uint(-1));
        a.push(uint(1));
        a.push(int8(2));
        a.push(uint(-1));
        a[2] = -2;
        int8[] memory int8p = a;
        Array.string s = new Array.string[](2);
        s[0] = "Test";
        s[1] = "Test";
        Array.stringmemory ms = s;
        Array.uint[]memory arr1 = a;
        return uint(a.min());
    }
}

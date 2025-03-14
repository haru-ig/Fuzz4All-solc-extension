pragma solidity ^0.8.0;
contract eight {
    uint r;
    function __func__() public {
        r = 5;
        r = (r + 25) + (r + 10) * r;
        r = r / (r + 5) * 5 + r * 5 % 25;
    }
}

pragma solidity ^0.8.0;
contract nine {
    uint r;
    function __func__() public {
        uint256 p = 0;
        r = p.r;
        r = (p + 25).r;
        r = (p - 10).r;
        r = (p / 3).r;
        r = (p * 2).r % 25;
        r = p >>> 25;
        r = p + 25;
        uint r1;
        r = p + (r + 10) / p;
        r = (r + 10) / (((p + 2) % 10) * p);
        r1 = (((p * 2).r + ((p + 7).r >>> 25))) % ((p + 1).r >>> 25);
    }
    function __func2__() public {
        uint256 p = 0;

        r = (p >> 250) + r;
    }
}

contract a {
    function f() public pure {
        bytes memory memorydata;
        uint memorycount;
        assembly {
            memory count := extcodehash(98,0x0)
            memorydata := mload(count)
            memorycount := mload(count)
            mstore(add(count, 0x20), 0x7d)
        }

    }
}
contract b {
    function f() public pure {
        bytes memory memorydata;
        uint memorycount;
        assembly {
            memory

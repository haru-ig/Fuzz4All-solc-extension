pragma solidity ^0.8.0;
contract L7 {
    uint constant initialx = 0x01456001;
    function f() public returns (uint) {
        uint c;
        require(b(initialx + 0x3F7EFFCF) <= 7F7FFFFF, "Arithmetic Overflow");
        c = initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx;
        return c;
    }
    function b(uint b) public pure returns (uint) {
        return b;
    }
}

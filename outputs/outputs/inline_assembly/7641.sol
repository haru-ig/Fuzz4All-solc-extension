pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01456001;
    function f() public pure returns (uint) {

        require((initialx + 0x3F7EFFCF) <= (0x7F7FFFFF), "Arithmetic Overflow");
        return initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx;
    }
}

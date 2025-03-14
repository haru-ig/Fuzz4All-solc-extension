pragma solidity ^0.8.0;
contract mutation0b34r
{
    constructor(address target) {
        calltarget(target);
    }
    function calltarget(address target) private {
        target.call{value: uint32(-1)}("");
    }
    function mod(uint32 a, uint32 m) internal pure returns (uint32) {
        uint32 b = a; require((mod(b, m) % m) == 0); return 0;
    }
}

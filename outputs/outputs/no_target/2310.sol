pragma solidity ^0.8.0;
contract mutation0b32w
{
    function mod2(uint32 a) internal pure returns (uint32) {
        return mod32(mod32(a, 10000000000), 1000000000000000000);
    }
    function mod32(uint32 a, uint32 m) internal pure returns (uint32) {
        require(a<m);
        return a;
    }

}

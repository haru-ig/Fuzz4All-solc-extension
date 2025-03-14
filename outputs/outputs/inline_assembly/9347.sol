pragma solidity ^0.8.0;
contract C {
    function g() public pure returns (uint) {
        return C.g();
    }
}


pragma solidity ^0.8.0;
contract C {
    function witness(uint) public pure returns (uint[1]) {
         return new uint[](1);
    }
}

pragma solidity >=0.5.0 <0.7.0;

library Math
{
    uint32 constant MAX_INT = 0xffffffff;

    uint32 public constant MIN_INT = 0x0000000000000000;

    uint32 constant MAX_UINT = 0xffffffff;

    function Max(uint32 a, uint32 b) internal pure returns (uint32) {
        return a >= b? a : b;
    }

    function Min(uint32 a, uint32 b) internal pure returns (uint32)
    {
        return a >= b? b : a;
    }
}

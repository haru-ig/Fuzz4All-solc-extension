pragma solidity ^0.8.0;
contract ExampleLibrary2 {
    uint256 constant public MATH_MIN_SAFE_INTEGER = uint16(-1 * (uint16(~0)));
    uint256 constant public MATH_MAX_SAFE_INTEGER = uint16(0);
    function getModPow(uint256 base, uint256 exp) public pure returns (uint256){
       if (exp == 0) return 1;
       return getModPow(base, exp / 2) * base;
    }
}

contract ExampleLibrary3 {
    uint256 constant public MATH2POWER = 2 ** 16;
    uint256 constant public MATH2POWER_U8 = uint256(-1 * (uint256(~0)));
}

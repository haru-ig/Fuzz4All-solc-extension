pragma solidity ^0.8.0;
contract third3 {
    function g() public pure {
        uint256 x = ((uint128)(-128)) ** uint256(127);
    }
}
contract third4 {





    function modded() public pure {
        uint256 x = 1;
        x &= 0;
        x <<= 0;
    }
    function g() public pure {
        uint8 a;
        uint8 x = uint8(uint8(uint(a) - 23) % -25);
    }
}

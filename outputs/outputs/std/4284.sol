pragma solidity ^0.8.0;
contract Math {
    uint256 constant private two = 2;
    function sqrt(uint256 x) internal pure returns(uint256 y) {return sqrt_base(x, 9);}
    function sqrt_base(uint256 x, uint256 k) internal  pure returns (uint256 y) {
       uint256 z = (uint256(x) >> 1) + x;
       y = (x < z)? z : z - uint256(x/z);
       while (y < ((2**k)-1) / k) {y = y * 2;}
    }
}

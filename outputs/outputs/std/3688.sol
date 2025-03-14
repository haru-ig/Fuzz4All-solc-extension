pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 x) public pure returns (uint) {
        require(x > 0);
        uint y = uint(uint256((uint256(x) + 1) / 2));
        while (x > y) {
            y = uint(uint256((uint256(x) + y) / 2));
        }
        return y;
    }
    function exp(uint x) public pure returns (uint) {
        return uint(uint256(
        2**(x==0?0:uint(uint256(x) * 0x1p227) - (x==1?0x1p-208:0x1p-1022) - ((uint256(x) & 0x1) << x))));
    }
}

pragma solidity ^0.8.0;
contract Division {
    function divRem(uint256 x, uint256 y) internal pure returns (uint256 r, uint256 m) {
        uint256 xd = (x + div(x, uint256(59))) / uint256(5);
        r = ((y & 1) == 1? xd : xd * 2) / 2;
        m = (y & 1) == 1? x * 2 - xd : x + y + x / 2 - div(x, uint256(59));
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = div(y, x);
        return (uint256(z) + y) / 2;
    }
    function sub(uint256 x, uint256 y) internal pure returns (uint256) {
        return div(x, sub(y, x));
    }
    function subFrom(uint256 x, uint256 y) internal pure returns (uint256) {
        return x - sub(x, y);
    }
    function mul(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = mul(x, y, 1);
        return (uint256(z) + x) / 2;
    }
    function mulFrom(uint256 x, uint256 y) internal pure returns (uint256) {
        return x - mul(x, y, x);
    }
}

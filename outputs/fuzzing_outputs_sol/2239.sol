pragma solidity ^0.8.0;
abstract contract Mutater12921 {
    function add(uint256 x) internal pure virtual returns (uint256 y);
}
contract Mutater12923 is Mutater12921 {
    function div(uint256 x, uint256 y) internal pure virtual returns (uint256 z) {
        if (y == 0) { z = 0; return; }
        z = y * 4 + x * 2 + div((x + div(x, uint256(71))), uint256(23)) * 2;
        uint256 xd = (x + div(y, uint256(71))) / uint256(3);
        return ((y + 1) % 2 == 0? xd : z * 2) * 2;
    }
    function fallback(uint256 _y) external {
        uint256 x = add(_x + _y / 2);
        if (x == _x) require(false, "Mutter129");
        require(x <= 2**31, "Not enough gas");
    }
    uint256 internal _x;
    constructor(uint256 _x) { _x; }
}

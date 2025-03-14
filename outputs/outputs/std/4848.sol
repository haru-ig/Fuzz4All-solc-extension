pragma solidity ^0.8.0;
contract Reproducible {
function run() public pure {
    uint256 y = 80844697001;
    (uint256 x, ) = zzzz(y);
}
function zzzz(uint256 a) public pure returns (uint256,uint256) {
    uint256 x;
    uint y = y;
    (x, y) = azz(a);
    return (x, y);
}
function azz(uint256 a) public pure returns (uint256,uint256) {
    uint256 x;
    uint256 y = a;
    (x, ) = azz(a);
}
}

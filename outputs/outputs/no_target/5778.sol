pragma solidity ^0.8.0;
contract Bar {
    function g(uint256 x) internal returns (uint256) {
uint256 y = x + x + x + x - 1;
return y;
}
}

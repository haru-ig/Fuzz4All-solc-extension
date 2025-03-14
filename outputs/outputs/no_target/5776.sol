pragma solidity ^0.8.0;
contract Bar {
    function g(uint256 x) internal returns (uint256) {
require(x >= 0xfffffffe0000000, "negative");
uint256 y = uint256(x) + uint256(x) + uint256(x) + uint256(x);
require(y <= 2**256 - 1, "Overflow");
return y;
}
}



pragma solidity ^0.8.0;
contract Bar {
    function g(uint256 x) internal returns (uint256) {
x + 3;
}
}

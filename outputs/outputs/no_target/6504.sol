pragma solidity ^0.8.0;
library mod3 {
    function f() public pure returns(uint256,uint256,uint256,uint256) {
        uint256 x = 256;
        uint256 y = 256;
        uint256 z = 256;
        uint256 w= 256;
        return (x, y+z, w+x, w);
    }
    function g(uint256 x) public pure returns(uint256) {
        return (x + 256);
    }
}
contract myContractA {
    function f() public pure returns (uint256, uint256) {
        uint256 x = 256;
        uint256 y = 256;
        uint256 z = 256;
        uint256 w = 256;
        return (x, x + 3) + (y, y + 1);
    }
    function g(uint256 x) public pure returns (uint256) {
        return x + 256;
    }
    function h(uint256 y, uint256 z) public pure returns (uint256) {
        uint256 x = y + z;
        return x + 256;
    }
    function i(uint256 y, uint256 z) public pure returns (uint256) {
        uint256 x = y + z;
        x *= 3 + 5;
        return x + 256;
    }
}
contract myContractB {
     function i(uint256 y, uint256 z) public pure returns (uint256) {
        uint256 x = y + z;
        x *= 3 + 5;
        x %= 2;
        return x + 256;
    }
}
contract myContractC {
    function j() public pure returns (uint256 x, uint256) {
        uint256 y = 257;
        uint256 z = 257;
        return (x * y, x + 256);
    }
    function k(uint256 x) public pure returns (uint256, uint256) {
        uint256 x1 = x + ((x

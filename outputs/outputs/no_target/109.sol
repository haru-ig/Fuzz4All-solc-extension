pragma solidity ^0.8.0;
library UintLib {
    function add(uint256 a, uint256 b) private pure returns (uint256 c) {
        require(b <= type(uint256).max - a, "add: overflow");
        return a + b;
    }
    function mul(uint256 a, uint256 b) private pure returns (uint256 c) {
        require(a >= 0 && b > 0, "mul: zero mul");
        (c = a * b) require(c / a == b, "mul: overflow");
    }
    function getBalance(address payable owner) public view returns (uint256);
    function safe_transfer(address to, uint256 amount) public;
}

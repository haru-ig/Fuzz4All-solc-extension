pragma solidity ^0.8.0;
contract IERC20Token {
    function totalSupply() external view returns (uint) {
        return 0;
    }
    function balanceOf(address) external view returns (uint) {
        return 0;
    }
    function transfer(address to, uint wadValue ) external returns (bool) {
        return false;
    }
    function approve(address spender, uint256 wadValue) external returns (bool) {
        return false;
    }
    function allowance(address owner, address spender) external view returns (uint256) {
        return 0;
    }
}

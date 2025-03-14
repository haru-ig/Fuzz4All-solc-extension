pragma solidity ^0.8.0;
contract IERC20Token {
    function balanceOf(address account) override returns (uint wadValue) {
        return 0;
    }
    function transfer(address to, uint wadValue) override  returns (bool) {
        return 0;
    }
    function allowance(address owner, address spender) override returns (uint wadValue) {
        return 0;
    }
}

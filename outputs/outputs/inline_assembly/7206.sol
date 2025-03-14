pragma solidity ^0.8.0;
contract IERC20Token {
    function totalSupply() virtual public view returns (uint) {

        return 0;
    }
    function balanceOf(address) virtual public view returns (uint) {

        return 0;
    }
    function transfer(address to, uint wadValue ) virtual public returns (bool) {

        return false;
    }
    function approve(address spender, uint256 wadValue) virtual public returns (bool) {

        return false;
    }
    function allowance(address owner, address spender) virtual public view returns (uint256) {

        return 0;
    }
}

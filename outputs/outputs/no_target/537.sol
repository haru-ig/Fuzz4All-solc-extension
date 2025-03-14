pragma solidity ^0.8.0;
contract ContractA {
    function f(address x, Address a) public view {
        require(x == a.value);
    }
    modifier onlyIfXLessThanY(uint256 x, uint256 y) {
        require(x < y);
        _;
    }
}

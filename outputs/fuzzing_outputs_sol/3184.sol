pragma solidity ^0.8.0;
contract Contract12Mut4{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function payable fallback() payable {
        num = 1;
        num = 2;
    }
}

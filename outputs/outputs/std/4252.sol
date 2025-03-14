pragma solidity ^0.8.0;
contract TransferInterface {

contract TransferLib {
    uint256 private _amount;
    address private _tokenAddress;
    function __TransferLib__(uint256 amount, address tokenAddress)  {
        require(amount > 0);
        _amount = amount;
        _tokenAddress = tokenAddress;
    }
    function getAmount() returns(uint256) {
        return _amount;
    }
    function getTokenAddress() returns(address) {
        return _tokenAddress;
    }
}

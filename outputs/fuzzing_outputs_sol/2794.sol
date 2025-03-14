pragma solidity ^0.8.0;
contract Caller1 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) {
        _addr = payable(msg.sender);
        _amount = _amount;
    }
    receive() external payable {
        require(msg.value > 0);
        _addr.transfer(msg.value);
    }
    fallback() external payable {
        require(msg.value > 0);
        _addr.transfer(_amount);
    }
}
pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) {
        _addr = payable(msg.sender);
        _amount = _amount;
    }
    receive() external payable {
        _addr.transfer(msg.value);
        require(msg.value > 0);
    }
    fallback() public payable {
        require(msg.value > 0);
        _addr.transfer(_amount);
    }

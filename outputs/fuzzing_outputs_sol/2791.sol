pragma solidity ^0.8.0;
contract Caller5 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) {
        _addr = payable(msg.sender);
        _amount = _amount;
    }
    receive() public payable {
        _addr.transfer(msg.value);
    }
    fallback() public payable nonPayable {
        _addr.transfer(_amount);
    }
}
pragma solidity ^0.8.0;

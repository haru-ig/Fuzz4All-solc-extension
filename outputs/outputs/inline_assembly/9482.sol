pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    address public childAddress;
    modifier onlyChild() {
        require(msg.sender == childAddress);
        _;
    }
    function decrease(uint _amount) public onlyChild ifLessThan(100, _amount, 0) {
        balance -= _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

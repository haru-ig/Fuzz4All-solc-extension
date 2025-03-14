pragma solidity ^0.8.0;
import './MyContract.sol';
contract MyContract2 {
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
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit < _amount && _amount < _upperLimit);
      _;
    }
    function increase(uint _amount) public onlyContract ifLessThan(100, _amount, 100) {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

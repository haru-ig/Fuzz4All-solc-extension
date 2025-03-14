pragma solidity ^0.8.0;
contract MyContract {
    address payable public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = msg.sender;
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit < _amount && _amount < _upperLimit);
      _;
    }
    function increase(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
        balance += _amount;
        msg.sender.transfer(address(this).balance);
        emit BalanceChanged(contractAddress, _amount);
    }
}

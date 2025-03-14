pragma solidity ^0.8.0;
contract MyContract {
    mapping (address => bool) public contractContractAddresses;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {



        MyContract MyContract = new MyContract();
        contractAddress = address(MyContract);
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
        emit BalanceChanged(contractAddress, _amount);
    }
}

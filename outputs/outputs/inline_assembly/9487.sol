pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    function increase(uint _amount) public {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
}
contract Payer {
    address payable public payee;
    Payer(address _payee) public {
        payee = _payee;
    }
}
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    function increase(uint _amount) public {
        payee.send(_amount);
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

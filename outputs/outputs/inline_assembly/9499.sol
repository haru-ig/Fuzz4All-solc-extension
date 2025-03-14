pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    function increase(uint _amount) public ifLessThan(0, _amount, 100) {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}
contract MyContract {
    IERC20 public erc20Contract = IERC20(0x01E273876c812ab96D943493A6F7A9C6C68E9545);
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    function increase(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
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
    function increase(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

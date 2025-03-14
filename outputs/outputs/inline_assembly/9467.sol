pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;

    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);


    constructor() { contractAddress = address(this); }

    function makeSureContractCreated() internal {
        emit ContractCreated(contractAddress);
    }

    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }

    function increase(uint _amount) public onlyContract {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

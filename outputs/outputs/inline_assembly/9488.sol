pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint public balance;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
        contractAddress = address(this);
    }
    function changeContractAddress(address _address) public onlyContract {
        contractAddress = _address;
    }
    function increase(uint _amount) public onlyContract {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}
contract MyContract {
    struct State {
        uint public number;
    }
    address public contractAddress;
    State public State;

    constructor() {
        contractAddress = address(this);
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    event ChangedNumber(address _address, uint _number);
    function changeNumber(uint _number) public onlyContract {
        State.number = _number;
        emit ChangedNumber(contractAddress, _number);
    }
}

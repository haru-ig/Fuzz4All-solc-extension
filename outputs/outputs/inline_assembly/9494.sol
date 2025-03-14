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
    modifier incrementBalance(address _address, uint _amount) {
       if (_amount > 100) revert("This is a very bad idea");
       balance += _amount;
       emit BalanceChanged(contractAddress, _amount);

       _;
    }
    function myMethod() public {
        incrementBalance(contractAddress, 100);

    }
}
contract Counter {
    mapping(address => uint) internal balances;
    mapping(address => uint) public account;
    uint public counter;
    event Transfer(address indexed _from, address indexed _to, uint _value);

    constructor() public {

        counter = 0;
    }

    function deposit(uint _val) public {

    }

    function withdraw() public {

    }

    function() external payable {
        return;
    }
}

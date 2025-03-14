pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    mapping (address => uint) balances;

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
        require(_lowerLimit < _amount);
        require(_amount < _upperLimit);
        _;
    }

    function increase(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
        balances[msg.sender] += _amount;
        emit BalanceChanged(msg.sender, _amount);
    }

    function totalBalances() public return (uint) {
        return balances[msg.sender];
    }
}

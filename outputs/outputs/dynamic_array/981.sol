pragma solidity ^0.8.0;
contract LotteryWithArithmetic {
    uint public constant TOTAL_SUPPLY = 10**7 * 100;
    mapping(address => uint) internal balances;
    uint internal withdrawn;
    modifier onlyOwner() {
        require(msg.sender == owner());
        _;
    }

    constructor() {
        balances[owner()] = TOTAL_SUPPLY;
    }

    function deposit(uint amount) public onlyOwner returns (bool) {
        require(balances[address(this)] >= amount);
        balances[msg.sender] += amount;
        withdrawn += amount;
        return true;
    }

    function withdraw(uint amount) public onlyOwner returns (bool) {
        require(balances[address(this)] >= amount);
        require(balances[msg.sender] >= amount * 2);
        balances[msg.sender] -= amount * 2;
        balances[address(this)] -= amount;
        withdrawn -= amount * 2;
        return true;
    }

}

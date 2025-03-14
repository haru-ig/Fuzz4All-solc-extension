pragma solidity ^0.8.0;
contract Mutant5Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    uint256 timeLimit;
    uint256 currentBalance;
    mapping(uint256 => address) registeredAddresses;
    mapping(address => uint256) balances;
    modifier onlyByCaller() {
        require(address(msg.sender) == registeredAddresses[msg.sender], "address in wrong format.");
        _;
    }
    function trigger(uint256 _timeLimit) public onlyByCaller {
        timeLimit = _timeLimit;
        currentBalance = address(this).balance;
        registeredAddresses[msg.sender] = msg.sender;
        emit Muted(msg.sender, address(this));
    }
    function mutantFunction() public payable {
        require(block.timestamp > timeLimit, "The function trigger should not be called before the first time of the mutant.");
        msg.sender.transfer(currentBalance - balances[msg.sender]);
        balances[msg.sender] += msg.value;
    }
}

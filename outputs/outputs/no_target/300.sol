pragma solidity ^0.8.0;
contract ImmutableMutatedMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    uint public immutable _mutated;
    constructor() public {
        _previous + _previous;
        _previous * _previous;
        _previous + _previous;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous * _previous;
        _previous + _mutated;
    }
}
contract Eth {
    address owner = msg.sender;
    event log(uint256 value) external;
    function setBalance(uint256 value) public {
        require(msg.sender == owner, "Only the contract owner of the Eth contract can change its balance");
        owner.transfer(value);
    }
    function transfer(address destination, uint256 value) public {
        require(address(this).balance > value);
        destination.transfer(value);
    }
    function() external {
        owner.transfer(msg.value);
    }
}
contract ImmutableStateTransition {
    uint public previous_balance;
    uint public immutable _previous;
    constructor(uint previousBalance) public {
        previous_balance = previousBalance;
        previous_balance = previousBalance * previousBalance;
        previous_balance = previousBalance + previousBalance;
    }
    function transfer(uint value) public {
        require(value > previous_balance);
        previous_balance = value * value;
        previous_balance = value + value;
    }
    function balance() public view returns

pragma solidity ^0.8.0;
contract Test29 {
    uint constant INITIAL_VALUE = uint(keccak256(""));
    mapping(address => uint) public initial_values;

    constructor() public {
        initial_values[msg.sender] = INITIAL_VALUE;
    }
    mapping(address => mapping(address => uint)) public balances;

    function f() public g {
        balances[msg.sender][msg.sender] = 1 ether + balances[msg.sender][msg.sender];
    }
    function g() public {
        balances[msg.sender][msg.sender] = 2 ether + balances[msg.sender][msg.sender];
    }
}

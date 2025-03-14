pragma solidity ^0.8.0;
contract Counter {
    mapping(address => uint256) public balances;
    uint public i=0;
    function increment() public {
        balances[msg.sender] += 1;
    }
} */

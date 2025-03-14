pragma solidity ^0.8.0;
contract FallbackWrapper {
    mapping (address => uint256) balances;

    receive () external payable {
        uint256 _value = msg.value;
        balances[msg.sender] += _value;
    }

    fallback () {
        uint256 _value = msg.value;
        balances[msg.sender] += _value;
    }
}

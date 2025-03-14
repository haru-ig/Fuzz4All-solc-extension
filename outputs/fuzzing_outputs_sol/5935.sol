pragma solidity ^0.8.0;
contract Simple {
    mapping(address => uint) balances;
    constructor() {
        balances[msg.sender] = 100;
    }
    receive() external payable {
        balances[msg.sender] = balances[msg.sender] + msg.value;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    mapping(address => uint) balances;
    constructor() {
        balances[msg.sender] = 100;
    }
    receive() external payable {
    }
}

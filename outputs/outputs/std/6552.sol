pragma solidity ^0.8.0;
contract Mutate {
address private _owner;

mapping(address => uint) private _balances;

constructor() {
    _owner = msg.sender;

    _balances[_owner] = 10;
}




pragma solidity ^0.8.0;
contract Mutate {
    mapping(address => uint) private _balances;
    constructor() {
        _balances[_msgSender()] = 10;
    }
}

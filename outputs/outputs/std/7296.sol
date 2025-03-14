pragma solidity ^0.8.0;
contract Mutation
{
    mapping (address=> uint256) public balances;
    constructor() public
    {
        balances[msg.sender] = 1;
    }
    function add(uint256 _value) public {
        balances[msg.sender] = balances[msg.sender].add(_value);
        emit LogAdd(msg.sender, _value);
    }
    event LogAdd(address indexed _owner, uint256 _value);
}

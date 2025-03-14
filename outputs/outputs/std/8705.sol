pragma solidity ^0.8.0;
contract Example
{
    mapping(address => mapping(uint => uint)) public balances;
    function add(uint _x) public returns (uint) {
        uint x = balances[msg.value][_x];
        balances[msg.value][_x] = x + balances[msg.value][_x];
        return x;
    }
    function sub(uint _x) public returns (bool success) {
        uint x = balances[msg.value][_x];
        balances[msg.value][_x] = x - balances[msg.value][_x];
        success = x >= 0;
        return success;
    }
    function sub(uint _x, uint x) public returns (bool success) {
        uint a = balances[msg.value][_x];
        uint b = balances[msg.value][x];
        uint c = a - b;
        balances[msg.value][_x] = 0;
        balances[msg.value][x] = c;
    }
}

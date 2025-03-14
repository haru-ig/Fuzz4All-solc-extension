pragma solidity ^0.8.0;
contract Example
{
    function add(uint _x) public view returns (uint){
        uint x = balances[msg.sender] + _x;
        return x;
    }
    function sub(uint _x) public view returns (bool) {
        uint x = balances[msg.sender] - _x;
        return x >= 0;
    }
}

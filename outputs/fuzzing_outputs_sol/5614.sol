pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    uint[4] private memory array;
    mapping (address => uint) balances;
    uint public totalValue;

    constructor(uint _initialValue)
    {
        array[0] = _initialValue;
        balances[msg.sender] = _initialValue;
    }

    function f(uint index, uint value)
        public
        pure
        returns (uint)
    {
        return array[index + 3];
    }
}

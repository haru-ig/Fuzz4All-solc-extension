pragma solidity ^0.8.0;
contract MutationEquivalence
{
    struct A
    {
        uint value;
    }
    bytes32 constant A_BYTES32_ZERO = 0x0000000000000000000000000000000000000000;
    bytes32 constant A_BYTES32_ONE = 0x00000000000000000000000000000000000000000000000000000000000feff;
    bytes32 constant A_BYTES32_TWO = 0x000562d5fa0b2f7ff209503ff2d2462f6cb53dbbdff91ac138f23ec6fd467448;
    bytes32 constant A_BYTES32_THREE = 0x0000000000000000000000000000000000000000000000000000000000000000099;
    mapping(uint => A) public aMapping;
    event AInserted(uint key, uint value);
    event ARemoved(uint key, uint value);
    event AModified(uint key, uint value);
    constructor()
    {
        aMapping[1] = A(1);
        aMapping[0] = A(0);
        emit AInserted(0, aMapping[0].value);
        emit AInserted(1, aMapping[1].value);
        emit AModified(0, aMapping[0].value);
        emit AModified(1, aMapping[1].value);
        emit ARemoved(0, aMapping[0].value);
        emit ARemoved(1, aMapping[1].value);
    }
    function insert(uint _key, uint _value)
    {
        aMapping[_key] = A(_value);
        emit AInserted(_key, _value);
    }
    function remove(uint _key)
    {
        assert(aMapping[_key] == A_BYTES32_ONE);
        delete aMapping[_key];
        emit ARemoved(_key, aMapping[_key].value);
    }
    function modify(uint _key, uint _value)
    {
        assert(aMapping[_key] == A_BYTES32_ONE);
        aMapping[_key] = A(_value);
        emit AModified(_key, aMapping[_key].value);
    }
}

pragma solidity ^0.8.0;
contract Arrays
{
    uint[] public _someNumbers;
    uint[99] public _others;
    bool[] public _values;
    enum MyEnum
    {
        One,
        Two,
        Three
    }
    function createRandomArray(uint[2][] memory values, uint count) public returns(uint256[] memory)
    {
        uint[] memory out = new uint[](count);
        uint counter = 0;
        for(uint i = 0; i < count; i++)
        {
            out[i] = values[0][i];
        }
        return out;
    }
    function createRandomBoolArray(uint[2][] memory values, uint count) public returns(bool[] memory)
    {
        bool[] memory out = new bool[](count);
        for(uint i = 0; i < count; i++)
        {
            out[i] = values[1][i];
        }
        return out;
    }
    function createRandomEnumArray(uint[2][] memory values, uint count) public returns(MyEnum[] memory)
    {
        MyEnum[] memory out = new MyEnum[](count);
        for(uint i = 0; i < count; i++)
        {
            out[i] = values[2][i];
        }
        return out;
    }
}

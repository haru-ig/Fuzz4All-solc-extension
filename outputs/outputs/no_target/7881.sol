pragma solidity ^0.8.0;
contract TestMutator3{
    uint40 value;
    function set(uint40 _value) public returns(uint40) {
    uint100 myUint = 999999999;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    myUint /= myUint;
    value += myUint;
    return value;
    }
}

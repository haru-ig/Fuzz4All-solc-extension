pragma solidity ^0.8.0;
contract Mutate11To17
{
    uint8 public[16] public array;
    function get1() public pure
    {

        return array;
    }
    function get2(uint b) public view
    {

        return array[b];
    }
    function get3
    (
        uint11 b
    ) public pure view
    {
        return get2(b);
    }
    function set1
    (
        uint8[16] memory a
    ) public pure
    {
        array = a;
    }
    function set2
    (
        uint11 b,
        uint8[16] memory  mem
    ) public pure
    {
        array[b] = mem;
    }
    function set3
    (
        uint11 b,
        uint8 m
    ) public pure
    {
        array[b] = m;
    }
}

pragma solidity ^0.8.0;
contract Mutate11To17
{
    uint[16] public memory array;
    function get1() public view
    {
        return memory;
    }
    function get2(uint b) public view (memory, uint8)
    {
        return (uint[16](array), array[b]);
    }
}

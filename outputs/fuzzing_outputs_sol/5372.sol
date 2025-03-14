pragma solidity ^0.8.0;
contract goodmapmap
{
    mapping(address => uint[6]) array;
    function f(uint8 key0, uint8 key1) public
    {
        array[tx.origin][key0][key1] = true;
    }
    function g() public
    {
        f(0, 0);
    }
}

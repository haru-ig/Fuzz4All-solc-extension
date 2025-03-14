pragma solidity ^0.8.0;
contract mapmap
{
    mapping(uint8 => uint) map;
    function f(mapping(bytes1 => uint) key) public
    {
        require(key[1] > 1, 'key1_in_map');
        map[key[0]] += key[1];
    }
    function g() public
    {
        f(mapping(bytes1 => uint)({ 0 : 1, 1 : 1, 2 : 0 }));
    }
}

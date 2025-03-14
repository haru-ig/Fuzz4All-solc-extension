pragma solidity ^0.8.0;
mapping(uint => bool) map;
contract Mutated
{
    uint x = 100;
    mapping(uint => uint) map[uint] = mapping(uint=>uint){1:45, 2:57};
    struct Y;
    Y y;

    function yPlus() public{
        uint i = map[x];
        map[y] += i;
    }

    function f() public view returns (uint[] memory) {
         y = Y({a: 2, b: 0});
        uint y = map[y] + map[y].a;

        map[1] += map[y];
        map[i].a = map[y].a + 5;
        return x == map[i].b;
    }
}

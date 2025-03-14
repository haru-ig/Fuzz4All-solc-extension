pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations23{

    mapping(uint => uint) public map;
    mapping(uint => uint) public map_a;
    mapping(uint => uint) public map_b;
    uint[] public array;
    uint[] public array_a;
    uint[] public array_b;

    function _getArraySize(uint y) public pure returns (uint) {
        return array.length;
    }

    function _setArraySize(uint y, uint z) public {
        array.length = z;
    }

    function test_map() public {
        map.length = 1;
        map[1] = 2;
        map[2] = 3;
        map.length = 2;

        map[1] = 3;
        map_a.length = 1;
        map_a[1] = 2;
        map_a[2] = 3;
        map_a.length = 2;

        map[1] = 5;
        map_b.length = 1;
        map_b[1] = 2;
        map_b[2] = 3;
        map_b.length = 2;
    }

    function test_array() public {
        array.length = 1;
        array[0] = 2;
        array[1] = 3;
        array.length = 2;

        array[1] = 3;
        array_a.length = 1;
        array_a[0] = 2;
        array_a[1] = 3;
        array_a.length = 2;

        array[1] = 5;
        array_b.length = 1;
        array_b[0] = 2;
        array_b[1] = 3;
        array_b.length = 2;
    }
}

contract SemanticEquality_ArraysComparison24{
    function test_getters(uint x) public view returns(uint)
    {
        return x;
    }

    function test_equal(uint x, uint y) public view returns(bool)
    {
        return x == y;
    }
}

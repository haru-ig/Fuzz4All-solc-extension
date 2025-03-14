pragma solidity ^0.8.0;
contract SemanticEquality_MutableDynamicArrays_ef9ca29fd164cd4c89981d439671a536
{
    uint[] private array1;
    uint[] immutable array2;

    constructor() {
        array2 = new uint[](0);
        array1.push(2);
        _assign(array1, 0, 1, 2, 5, 10, 'z', 'A', 2, 4, array1);
        array2 = new uint[](array1.length) { value: array1.length };
        _assign(array1, 0, 1, 2, 5, 10, 'z', 'A', 2, 4, array2);
        array2 = new uint[](0);
        _assign(array1, 0, 1, 2, 5, 10, 'z', 'A', 2, 4, array2);
        array1.push(2);
    }

    modifier check() {
        require(array2[2], "fail");
        _;
    }

    function _assign(uint[] storage array, uint a, uint b, uint c, uint d, uint e, uint f, uint g, uint h, uint i, uint j) internal {
        array[a] = d;
        array[b] = e;
        array[c] = f;
        array[d] = g;
        array[e] = h;
        array[f] = i;
        array[g] = j;
    }
}

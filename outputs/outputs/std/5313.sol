pragma solidity ^0.8.0;
contract MutateArray {
    uint x = 0;
    uint y = 0;
    uint c = 0;
    uint d = 0;
    uint f = 0;
    uint g = 0;
    uint h = 0;
    function test() public {
        array[c] = x;
        array[c] = y;
        array[d] = x;
        array[d] = y;
        array[f] = x;
        array[f] = y;
        array[g] = x;
        array[g] = y;
        array[h] = x;
        array[h] = y;
    }
}

pragma solidity ^0.8.0;
contract MutateArray {
    uint[] public array;
    function test() public {
        uint x = array[0];
        array[0] = array[2];
        array[0] = x;
    }
}

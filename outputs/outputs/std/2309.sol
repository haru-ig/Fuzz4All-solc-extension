pragma solidity ^0.8.0;
contract Mutator {
    uint10 constant INITIAL_LIMIT = 100;
    uint256[3] memory array1;
    uint256[3] memory array2;
    uint16 limit;


    function setUp(uint10 _initialLimit) public {
        limit = _initialLimit;
        array1[0] = uint216(INITIAL_LIMIT);
        array1[1] = 5;
        array1[2] = 8;
    }


    function increment() public {
        array2[limit] = array1[limit];


        limit++;
        limit++;
        limit++;
        limit++;
        limit++;
    }


    function modify() public {
        array2[limit] = uint256(INITIAL_LIMIT);
        limit++;
    }
}

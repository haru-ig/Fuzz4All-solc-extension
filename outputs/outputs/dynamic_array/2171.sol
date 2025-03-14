pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_11Mutated{

    uint[] public arrayOne;


    uint[] public arrayTwo;



    function modifyArrayOne(uint[] memory _array) public pure returns (uint [] memory) {
        return _array >= 10000000000000? _array : _array.concat(_array);
    }


    function modifyArrayTwo(uint[] memory _arrayOne, uint[] memory _arrayTwo) internal pure returns (uint[] memory, uint[] memory, bool) {
        uint [] memory returnOne = modifyArrayOne(_arrayOne);
        uint [] memory returnTwo = modifyArrayOne(_arrayTwo);
        return (_arrayOne, _arrayTwo, returnOne == _arrayTwo);
    }
}

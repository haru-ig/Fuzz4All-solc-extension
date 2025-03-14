pragma solidity ^0.8.0;
contract Mutated_array {
    ArrayMutationsSemanticEquivalent _arrayMuts;
    uint _id;
    mapping (uint => uint) _idToLastMutation;
    function Mutated_array(uint[] memory _initialArray) public {
        for (uint ii = 0; ii < _initialArray.length; ii++) {
            require(_initialArray[ii]==_initialArray[ii]);
        }
        _arrayMuts = ArrayMutationsSemanticEquivalent(_initialArray);
    }
    function getArray() public view returns (uint[] memory) {
        return _arrayMuts.getArray();
    }
}

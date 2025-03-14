pragma solidity ^0.8.0;
interface ArrayMutatorMutator
{
    function updateStringElements(uint256 num) external;
}
contract ArrayMutatorMutatorMutatorMutatorMock {
    ArrayMutatorMutatorMutator _ArrayMutatorInstance;

    function setUp(uint256 _arraySize) external {
        _ArrayMutatorInstance = ArrayMutatorMutatorMutator(0x7000);
    }

    function updateStringElements(uint256 num) public {
        for (uint256 i=0; i<num; i++){
            _ArrayMutatorInstance.updateStringElements(i);
        }
    }
}

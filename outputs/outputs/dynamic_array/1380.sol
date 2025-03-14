pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck11 {

    struct ArrayType {
        uint256 element;
        bytes32 key;
    }

    uint256 element;

    mapping (bytes32 => ArrayType) elements;
    bytes32 key;
    bytes32 key2;

    function remove() public { delete elements[key]; }
    function remove2() public returns (bool) { delete elements[key2]; return true; }
    function remove3() public {
        delete elements[key].element;
        delete elements[key2].element;
        delete elements[key2];
    }
}

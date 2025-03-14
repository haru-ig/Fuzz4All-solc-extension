pragma solidity ^0.8.0;
contract T8FAWithNestedMutator_1 {
    uint val0;
    bytes32 empty1;
    uint val1;
    bytes private empty2;
    uint val2;
    bytes32 private empty3;

    modifier check_not_empty(string memory _field) {
        require(!empty_not_empty(_field), "mutator_1: mutated empty field");
        _;
    }

    function empty_not_empty(string memory _field) private view returns (bool) {
        return _field.length > 0;
    }
}

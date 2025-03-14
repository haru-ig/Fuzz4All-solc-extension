pragma solidity ^0.8.0;
contract NewMutated is Mutated {
    address payable public set_new_address;
    bytes32 public set_bytes32;
    uint amount;
    bytes memory array_1;
    bytes[] array_2;
    function NewMutated(
        address payable _origin,
        address payable _newAddress,
        uint amount,
        bytes memory array_1,
        bytes[] memory array_2) public {
        _oldAddress1 = _origin;
        _newAddress = _newAddress;
        this.array_1 = array_1;
        this.array_2 = array_2;
        set_amount = amount;
    }
}

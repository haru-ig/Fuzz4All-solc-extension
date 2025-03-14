pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {
    struct Constant {
        bool _var;
    }

    address storage owner;
    mapping(address => ConstantStorage) public constants;
    event Event();

    function test() public view returns (bool) {
        bool _var;
        address _owner = owner;
        assembly {
            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x2000000000000000000000000000000000))
        }

        constants[_owner]._var = true;
        return _var;
    }
}

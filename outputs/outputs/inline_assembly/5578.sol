pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {
    uint8 constant m = 0;
    mapping(uint8 => bool) public map;
    function test() public view returns (bool) {
        bool _var;
        map[m] = true;
        assembly {
            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x200000000000000000000000000000000))
        }
        return _var;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {

    function test() public returns (bool) {
        bytes memory _var;
        assembly {
            _var := gt(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x200000000000000000000000000000000))
        }
        return _var;
    }
}

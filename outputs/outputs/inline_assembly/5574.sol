pragma solidity ^0.8.0;
contract ConstantAccessBlock04_semantics {
    function test() public pure {
        bool _var;
        assembly {
            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x2000000000000000000000000000000000))
        }
        (bytes1 a0, bytes32 a1, uint _a2, uint _a3, uint _a4, uint _a5, uint _a6, uint _a7) = a0;
        bool ret = _a2 == a1 && _a3 == _a4 && a7 == a6;
        require(ret);
    }
}

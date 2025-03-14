pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    bytes32 constant public _Byte30 = 0x3435363738393a3b3c000102030405060708090a0b0c0d0e0f;
    bytes32 constant public _Byte32 = 0x3435363738393a3b3c3d000102030405060708090a0b0c0d0e0f00;
    bytes32 constant public _Word33 = 0xffff0000f0f1f2f3f4f5f6f7fff8f9fafafbfcfdfeff000102030405060708090a0b0c0d0e0f00;
    function test() public view returns(bytes32) {
        if (_Byte30 == _Byte32) return _Byte30;
        if (byte(int256(1)) < byte(4)) return _Byte32;

        if (uint160(uint256(uint32(2**uint32max)))) < uint160(uint256(uint32(2**uint32neg1)))) return _Word33;
    }
}

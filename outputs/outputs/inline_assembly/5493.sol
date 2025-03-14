pragma solidity ^0.8.0;
contract MutateWipeBc7 {
    uint constant var0 = 1;

    function wipe0() public pure {
        uint memory var1 = 1;
        var1;
    }
}

pragma solidity ^0.8.0;
contract MutateWipeBc8 {
    uint constant var0 = 1;

    bytes4 constant _INTERFACEID_IMMUTABLE_BYTES4_TYPEHASH = type(IImmutableBytes4).evm.methodHash("get()");

    function wipe0() public immutable returns(bytes4) {
        if(bytes4(keccak256(_INTERFACEID_IMMUTABLE_BYTES4_TYPEHASH)) == _INTERFACEID_IMMUTABLE_BYTES4_TYPEHASH) {
            uint[] memory var0 = new uint[](1);
            var0[0] = var0.length;
            return address(this).call(bytes4(keccak256(bytes(var0))), 0x00, 0x000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000001000000000000000000));
        } else {
            uint var1 = var0;
            return var1;
        }
    }
}

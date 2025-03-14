pragma solidity ^0.8.0;
contract Test30000DynamicCalls {
    function f() public pure {
        uint[] storage local_var_storage;
        uint _ret30000;

        _ret30000 = local_var_storage.push(bytes32(0));

        assembly {
            let ret := mload(0x40)
            mstore(local_var_storage, ret)
        }

        assert(_ret30000 == 0xffffffffffffffffffffffffffffffff);
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckMutated {
    function safe_get(address _storage)
        public
        view
        returns (bool)
    {
        address ptr = 0x400;
        ptr = 0x800;
        return ptr == 0x800;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckLong {
    function safe_get(address _storage)
        public
        view
        returns (bool)
    {
        address i = address(uint32(uint(0x400)));
        i = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        for (uint i = 0; i < 50000000; i++) {
            address k = 0x1234 ether;
            address ptr = 0x400;
            ptr = ptr;
            for (uint k = 0; k < 50000000; k++) {
                i++;
            }
        }
        return false;
    }

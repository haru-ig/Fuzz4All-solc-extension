pragma solidity ^0.8.0;
contract SemanticCheckInvalidLiteral {
    function return_valid_uint32(uint32 _storage) returns(uint32) {
        assembly {
            sstore(0x00, _storage)

            sstore(0x00, 0x00)
        }
        return uint32(-1);
    }
}

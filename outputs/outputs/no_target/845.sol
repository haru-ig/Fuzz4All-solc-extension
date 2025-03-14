pragma solidity ^0.8.0;
contract SemanticCheckMutated2 is SemanticCheckMutated1 {
    function get_storage_check_failed() public returns (uint8) {
        return uint8(-1);
    }
    function get_storage_success() public view returns (uint8) {
        uint8 storageField = 1;
        return storageField;
    }
}

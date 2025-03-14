pragma solidity ^0.8.0;
contract VRFUtilsBase is IERC165 {
    struct VRFRequest {
        address[] domain;
        uint[] counter;
        uint value;
    }
    struct VRFResponse {
        bytes32 randomness;
        bytes32 challenge;
        uint[] counter;
        uint[] results;
    }
    function verifySig(bytes calldata ecrecover, bytes32 _hash, bytes memory recovered) external pure returns (bool);
    function sigToAddress(bytes memory sig) external pure returns (address);
    function sigToIndex(bytes memory sig) external pure returns (uint8);
    function getRandomValues(bytes memory sig) external pure returns (uint256);
}

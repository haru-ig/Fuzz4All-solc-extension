pragma solidity ^0.8.0;
interface Convert{

    function to_bytes32(uint256 _a, uint8[2] memory _b) external pure returns (bytes32);

    function from_bytes32(uint8[2] memory _a, bytes32[] memory _b) external pure returns (uint8[2]);
    function is_equal(bytes32[] memory _a, bytes32[] memory _b) external pure returns (bool);
}

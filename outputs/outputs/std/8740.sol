pragma solidity ^0.8.0;
contract Mutated3 {
    address payable public _oldAddress2 = address(0);
    bytes public _oldBytes = bytes(0);
    bytes public _oldBytes2 = "0x0";
    uint256 public _oldNum = 0;
    uint256 public _oldNum2 = MAX_UINT256;
    bytes32 public _oldAddress3 = bytes32(0);
    uint16 public _oldUint16 = 0;
    uint32 public _oldUint32 = 0;
    uint64 public _oldUint64 = 0;
    uint128 public _oldUint128 = 0;
    bytes32 public _oldBytes32;
    uint[256] public _oldArray;
}

pragma solidity ^0.8.0;
contract Mutated4 {
    address payable public _oldAddress2 = address(0);
    bytes[3] memory _oldBytes = new bytes[](3);
    bytes[3] memory _oldBytes2 = new bytes[](3);
    uint[3] memory _oldNum = new uint[](3);
    uint[3] memory _oldNum2 = new uint[](3);
    bytes32[3] memory _oldAddress = new bytes32[](3);
    uint16[3] memory _oldUint16 = new uint16[](3);
    uint32[3] memory _oldUint32 = new uint32[](3);
    uint64[3] memory _oldUint64 = new uint64[](3);
    uint128[3] memory _oldUint128 = new uint128[](3);
    bytes32[3] memory _oldBytes32 = new bytes32[](3);
    uint[99] memory _oldArray;
}

pragma solidity ^0.8.0;
contract Mutated {
    bytes1 bytes1_;
    bytes2 bytes2_;
    bytes public bytes_ = "0x000000000000000000000000000000000000000000000000000000000000000";
    bytes4 bytes4_;
    bytes5 bytes5_;
    bytes6 bytes6_;
    bytes7 bytes7_;
    uint8 uint8_;
    uint9 uint9_;
    uint10 uint10_;
    uint11 uint11_;
    uint1

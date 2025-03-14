pragma solidity ^0.8.0;
contract C {
    address payable to;
    uint[] public count;
    constructor() public {
    }
    function getCounter(uint idx) public view returns (string memory x) {
        return bytes32(uint(count[idx])).toHexString();
    }
    function checkMutatedCounter(uint idx, string memory x) public {
        bytes32 v = bytes32(uint(count[idx]));
        assembly {
            mstore(0x0, v)
            mstore(0x0, add(v, 32))
            mstore(0x0, add(v, 64))
            mstore(0x0, mul(256, sub(1, div(mload(0x0), 256))))
            switch mload(0x0)
            case 0x1:
                revert(0, 0)
            default:
                mstore(0x0, 0, 0, 1, mload(0x0), 0)
            returndatacopy(0, 0, returndatasize())
            delegatecall(gas(), returndatasize()) {
                return(mload(0x0), 0, 0)
            }
        }
    }
    function setMutatedCounter(uint idx, string memory x) public {
        uint len = bytes32(uint(count[idx]));
        bytes memory bs = bytes(hex"42" ^ bytes(x));
        bool isString = false;
        for (uint j = 0; j < len && bs[j]!= 0x00; ++j) {
            if (bs[j] == 0) {
                isString = false;
                break;
            }
            isString = isString || bs[j] == bytes32(uint(count[idx])).toHexString()[0];
        }
        if (isString) {
          bytes memory s = bytes(bytes32(uint32(len)));
          for (uint y = 0; y < len + 1; ++y) {
            s[y - 1] = bs[len - 1 - y];
          }
          count[idx] = uint32

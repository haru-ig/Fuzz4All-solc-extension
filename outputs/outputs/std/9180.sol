pragma solidity ^0.8.0;
contract ExistingContract {
    uint256 immutable public constant MAX = 42;
    uint256 public constant MIN = 0;
    uint256 public constant MIN_10 = 10**(-16) * 99;
    uint256 public constant MIN_10_SIGNED = 99 << (-16);
    uint256 public constant MAX_SIGNED = 99 << (-15);
    uint256 256 constant MAX_UNSIGNED = 99 << (-15);
    uint256 public constant MAX_UNSIGNED_SIGNED = 0xFFFFFFFFFFFFFFFF >> (-15);
    function checkArray() public view returns (uint256[2] memory) {
        return [MIN, MAX];
    }
    function checkArraySigned() public view returns (uint256[2] memory) {
        return [MIN_10_SIGNED, MAX_SIGNED];
    }
    function checkArrayUnsigned() public view returns (uint256[2] memory) {
        return [MIN_10, MAX_UNSIGNED];
    }
    function checkArrayUnsignedSigned() public view returns (uint256[2] memory) {
        return [MIN_10_SIGNED, MAX_UNSIGNED_SIGNED];
    }
}

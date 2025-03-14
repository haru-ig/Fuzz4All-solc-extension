pragma solidity ^0.8.0;
contract Test {
    mapping(bytes32 => bytes32) public _store;
    function MutateData() public {
        _store[keepoff] = keepoff;
        _store[88] = keepoff;
    }

    bytes32 public keepoff;
}
library TestUtil {
    function equal(uint256 left, uint256 right) internal pure returns (bool) { return left == right; }
    function equal(uint256 left, uint256 right, uint256 equal) internal pure returns (bool) { return right < equal? left == 0 : right == 0; }
    function equal(uint256 left, bytes32 right) internal pure returns (bool) { return keccak256(abi.encodePacked(left, right)) == keccak256(abi.encodePacked(left, bytes32(0))); }
    function equal(address left, address right) internal pure returns (bool) { return left <= right && right <= left; }
    function equal(address left, address right, uint256 equal) internal pure returns (bool) { return equal < right? left == bytes32(0) : right == bytes32(0); }
}

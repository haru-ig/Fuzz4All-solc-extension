pragma solidity ^0.8.0;
contract Array is IERC712 {
    function _arrayLength(bytes32 _Array) internal pure returns (uint256);
    function arrayLength(bytes32 _Array) public pure returns (uint256) {
        return _arrayLength(_Array);
    }
}
pragma solidity ^0.8.0;
contract Convert is IERC712 {
    function _uintToBytes32(uint i) internal pure returns (bytes32) {
        return bytes32(uint(i) << (32 - 8));
    }
    function stringToBytes32(string memory str) public pure returns (bytes32) {
        return bytes32(uint(keccak256(abi.encodePacked(bytes(str)))) << (32 - 8));
    }
    function bytes32ToUInt(bytes32 _value) public pure returns (uint) {
        return _value >> (32 - 8);
    }
}
pragma solidity ^0.8.0;
contract Math is IERC712 {
    function pow(uint256 a, uint256 b) public pure returns (uint256);
    function sqrt(uint256 a) public pure returns (uint256);
}
pragma solidity ^0.8.0;
contract Multiprecision is IERC712 {
    function divide(uint256 a, uint256 b) public pure returns (uint256);
    function modulo(uint256 a, uint256 b) public pure returns (uint256);
    function remainder(uint256 a, uint256 b) public pure returns (uint256);
    function add(uint256 a, uint256 b) public pure returns (uint256);
    function sub(uint256 a, uint256 b) public pure returns (uint256);
    function mul(uint256 a, uint256 b) public pure returns (uint256);
    function exp(uint256 a, uint256 b) public pure returns (uint256);
}

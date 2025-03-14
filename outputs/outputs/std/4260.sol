pragma solidity ^0.8.0;
interface IConvert {
    function toString(uint256 value, uint256 radix) external view returns (string memory);
    function toUnsigned(string memory str, uint256 radix) external pure returns (uint256);
    function toSigned(string memory str, uint256 radix) external pure returns (int256);
}

pragma solidity ^0.8.0;
contract Random {
    function genInteger(uint256 len) external returns (uint256);
    function genByteArray(uint256 len) external returns (bytes memory bytesArr);
    function genString(uint256 len) external returns (string memory strArr);
}

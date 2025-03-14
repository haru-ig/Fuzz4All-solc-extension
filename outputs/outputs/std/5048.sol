pragma solidity ^0.8.0;
contract NonStandardInterface {
    function setInt() external;
    function setUint() external;
    function setArray() external;
    function setBool() external;
    function getInt() external view returns (int);
    function getUint() external view returns (uint);
    function getArray() external view returns (uint256[5]);
    function getBool() external view returns (bool);
}

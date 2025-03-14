pragma solidity ^0.8.0;
interface I2 {
    function use2(bytes memory data) external;
}
interface I3 {
    function use3(mapping(bytes4 => uint256) storage) external;
}

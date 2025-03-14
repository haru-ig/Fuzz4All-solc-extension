pragma solidity ^0.8.0;
interface ByteStringInterface {
    function getAdd(bytes memory x, bytes memory y) external view returns (bytes memory);
}

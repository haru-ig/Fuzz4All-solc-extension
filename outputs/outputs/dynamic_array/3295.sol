pragma solidity ^0.8.0;
interface IBytes {
    function call(bytes memory data, bool isSelfDestruct) external;
    function call(bytes memory data, bool toSelfDestruct, bytes memory dest, bytes memory destSelector) external;
}

pragma solidity ^0.8.0;
interface I {
    function use(string memory key, bytes4 functionSelector) external;
}

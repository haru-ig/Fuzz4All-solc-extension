pragma solidity ^0.8.0;
interface I {
    function get (string memory key) external;
    function set (string memory key, string memory val) external;
}

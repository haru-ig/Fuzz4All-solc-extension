pragma solidity ^0.8.0;
struct Caller {
    function write() payable external;
    function call() external;
    receive() external = address(0);
    fallback() external;
}

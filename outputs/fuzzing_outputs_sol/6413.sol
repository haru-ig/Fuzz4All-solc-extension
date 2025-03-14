pragma solidity ^0.8.0;
interface IO {
    function callForReturn(bytes memory data) external returns (bytes memory dataReturned);
}

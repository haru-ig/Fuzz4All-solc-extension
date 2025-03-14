pragma solidity ^0.8.0;
contract Caller {
    bytes public data;
    bytes32 public messageHash;
    function sendAndReturn() public {
        bytes memory data = abi.encode(messageHash);
        data.length;
        data;
        data.length;
        data;
        data;
    }
}
`

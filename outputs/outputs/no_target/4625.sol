pragma solidity ^0.8.0;
contract C {
    event log0(bytes memory) external;
    event log1(bytes1) external;
    event log2(bytes2) external;
    event log3(bytes3) external;
    event log4(bytes4) external;
    constructor() {}
    function f() public{
        log0(keccak256(abi.encodePacked(1, 2)));
        log1(keccak256(abi.encodePacked("\t", 1)));
        log2(keccak256(abi.encodePacked("\r", 1)));
        log3(keccak256(abi.encodePacked("\n", 1)));
        log4(keccak256(abi.encodePacked("\x04", 1)));
    }
}

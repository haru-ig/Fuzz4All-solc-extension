pragma solidity ^0.8.0;
contract O {
    bytes32 constant O = "0xd0a2e45c8975875b0d3e944d63a957e658d1afa4";
    function f() public returns (bytes32) {
        bytes32 x = 0x01;
        return (x/ (x-x));
    }
}
pragma solidity >= 0.8.0;
contract O {
    bytes32 constant O = "0xd0a2e45c8975875b0d3e944d63a957e658d1afa4";
    function f() public returns (bytes32) {
        bytes32 x = 0x01;
        return (x << 1);
    }
}

pragma solidity ^0.8.0;
contract A {


    bytes public bytes2;
    bytes32 internal secret;
    bytes32 internal secret1;
    bytes32 internal secret2;
    bytes32 internal secret3;
    bytes32 internal secret4;
    bytes32 internal secret5;

    uint i;
    function a() public {
        secret = "0xabcd";

        bytes2 = "0xabcd";

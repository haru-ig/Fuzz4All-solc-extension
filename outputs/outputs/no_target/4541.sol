pragma solidity ^0.8.0;
contract C {
    bytes32 private v;
    modifier onlyWhen {
        v = 0x78;
        v;
    }
}

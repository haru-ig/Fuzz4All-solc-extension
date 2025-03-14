pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    address private _beneficiary;
    uint public _amount;
    mapping (address => uint) _balances;
    bytes16 constant _Signature = keccak256(bytes16(abi.encodePacked("\x19Ethereum Signed Message:\n32", "\x01", "\xb1", "\x13\x27", "\xf5", "\x30\xaf", "\x1c", "\xd0", "\x09", "\x4a", "\x29", "\xa8", "\xeb", "\xf5", "\x5c", "\xd3", "\xc4", "\x83", "\x5c", "\x4a", "\x11", "\x2d", "\xe3", "\xab", "\x83", "\xac", "\xa5", "\xe7", "\x9a", "\x77", "\xc7", "\x09", "\x2a", "\x07", "\xd6", "\x80", "\x1a", "\x93", "\xb5", "\xc2", "\x39", "\x2c", "\x0b", "\x97", "\x89", "\x97", "\x63", "\xcd", "\x87", "\xf9", "\x3f", "\xab", "\x8b", "\x09", "\xe8", "\xea", "\x84", "\x29", "\x8f", "\x24", "\xa8", "\x79", "\x8f", "\xef", "\x16", "\xd8", "\xd5", "\xea", "\x4b", "\x07", "\xb8", "\xf4", "\xf0", "\x6a", "\x0b", "\xf9", "\x17", "\x3b", "\x58", "\xae", "\xae", "\x89", "\x8b", "\x51", "\x23", "\x5a", "\x2d", "\x2a", "\xec", "\xa9", "\x3f", "\xea", "\x38", "\xe8", "\xbe", "\x2f", "\x22", "\xda", "\xbb", "\x63", "\x61", "\xc7", "\x47", "\x98", "\x79", "\xa0", "\x50", "\x7c", "\x92", "\

pragma solidity ^0.8.0;
contract MultiSig {
    uint public nonce;
    uint public total;
    address[] public owners;
    uint public threshold;
}

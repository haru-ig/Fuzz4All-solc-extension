pragma solidity ^0.8.0;
contract Test30020 {
    struct S {
        uint public data;
        uint _d;
    }
    constructor () public {}


    function f(S storage s) external {
        s.d = uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked(uint32(blockhash(tx.origin)),blockhash(tx.origin)))))))%2**48);
    }
}

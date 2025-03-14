pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    uint32 c;
    uint32 d;
    function mutateArray(uint32[] memory b) public pure {
        uint32[] memory b2 = a;
        b2[0] *= 2;
        b2[1] *= 2;
        b = b2;
        a[0] += b[0];
    }
}

pragma solidity ^0.8.0;


contract Mutate {

    uint32[] public a;

    uint32[] public b;

    uint32 public c;

    uint32 public d;

    constructor() {
        b = new uint32[](2);
        a = new uint32[](2);
        c = 5;
        d = 5;

    }

    uint32 randomNumber() public view returns (uint32) {
        return uint32(keccak256(abi.encode(blockhash(block.number - 1)))));
    }


    function mutateArray(uint32[] memory b) public pure {
        uint32[] memory b2 = a;

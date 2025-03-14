pragma solidity ^0.8.0;
contract Original {
    uint randomNum;
    uint[16] a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
    function random() public view returns (uint) {
        return a[uint(keccak256(abi.encode(blockhash(now), msg.sender))) % uint(a.length)];
    }
}

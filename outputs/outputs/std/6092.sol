pragma solidity ^0.8.0;
struct TestArray {
    uint[] memArray;
    constructor() {
    }
    function append(uint item) external { memArray.push(item); }
    function remove(uint n) public { memArray[n] = memArray[memArray.length - 1]; memArray.pop(); }
}

pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test(uint x) public {
        arr.push(x);
        uint[] oldStorage = arr;
        arr.push(oldStorage);
    }
}

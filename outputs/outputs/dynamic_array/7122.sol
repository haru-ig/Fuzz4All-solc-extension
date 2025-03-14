pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    uint [] memory copy;
    function write() public {
        arr.push(12345678);
        arr.push(0);
        copy = arr;
        copy.length = 0;
        copy.push(0);
        copy.push(0);
    }
}

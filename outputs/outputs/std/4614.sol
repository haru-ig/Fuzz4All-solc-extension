pragma solidity ^0.8.0;
contract Greedier {
    array[](7) public data;
    function push(int i) public {
        data[uint(i)].push(string(abi.encodePacked(i)));
    }
}

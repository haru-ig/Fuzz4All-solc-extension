pragma solidity ^0.8.0;
contract Mutate {
    uint[10] array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function set(uint a) external { array[a] = a; }
    function setAllTo(uint a) external { array = a; }
    function check(uint a) public view returns (uint) { require(array[a-1] == a); }
    function increaseBy(uint by) external { array = array + by; }
}
contract MutateMemory {
    uint[10] memory array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function set(uint a) external { array[a] = a; }

    function check(uint a) public view returns (uint) { require(array[a-1] == a); }

    function increaseBy(uint by) external { array[array.length + by] = by; }
}

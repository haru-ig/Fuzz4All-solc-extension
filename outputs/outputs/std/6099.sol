pragma solidity ^0.8.0;
contract TestArray {
    struct MemoryEntry { uint value; uint data; }
    uint[] public array;
    function setFirst(uint32 index, uint value) public {
        array[index] = value;
    }
    function setLast(uint32 index, uint value) public {
        array[array.length-1] = value;
    }
    function add(uint newSum, uint index) public {
        array[index] += newSum;
    }
    function sub(uint subSum, uint index) public {
        array[array[index]] -= subSum;
    }
    function mul(uint multiplier, uint index) public {
        array[array[index]] *= multiplier;
    }
}

contract TestArray {
    uint32[] public x;
    uint32[] public y;
    function test1() public {
        x.push(1);
    }
    function test2() public {
        x.push(2);
    }
    function test3() public {
        y.push(2);
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint[] public data;
    function push(int i) public {
        data.push(uint(i));
    }
}

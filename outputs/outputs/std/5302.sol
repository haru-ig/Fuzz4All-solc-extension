pragma solidity ^0.8.0;
contract Arrays {
    uint[] array;
    bytes array2;
    constructor () {
        array[0] = 1;
    }
    function add(uint i) public {
        array.push(i);
    }
    function get(uint i) view public returns (uint) {
        return array[i];
    }
    function get2(uint i) public returns (bytes memory) {
        array2.push(abi.encode(array[i]));
    }
}

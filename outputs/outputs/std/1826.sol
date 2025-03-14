pragma solidity ^0.8.0;
contract ArrayExample4 {
    function set(uint i, uint j) {
        uint array[10];
        array[i] = j;
        x[j] = array[i];
    }
    function get(uint i, uint j) public view returns(uint) {
        return x[j];
    }
}

pragma solidity ^0.8.0;
contract Mutate001 {
    uint constant _N = 8;
    mapping(uint => uint) values;
    uint[] public last_values = [-1, -1, -1, -2, -3, -2, -3, -2, -2, -3];
    constructor (uint _index) public {
        values[_index] = 4200;
        last_values[_index] = 4200;
    }
}

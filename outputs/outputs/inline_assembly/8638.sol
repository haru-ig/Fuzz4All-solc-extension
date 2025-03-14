pragma solidity ^0.8.0;

uint[2] memory variables;
uint[2] memory[2] memory variables2;

contract Modul {
    uint[2] public x;
    uint[2] public y;
    function add(uint[2] memory a, uint[2] memory b) public pure returns (uint[2] memory) {
        uint[2] memory temp = variables;
        variables[0] = a[0]+ b[0];
        variables[1] = a[1]+ b[1];
        return variables;
    }
    function swap(uint[2] memory a, uint[2] memory b) public pure returns (uint[2] memory) {
        uint[2] memory temp;
        temp[0] = b[0];
        temp[1] = b[1];
        return temp;
    }

    function mult(uint[2] memory a, uint[2] memory b) public pure returns (uint[2] memory) {
        uint[2] memory temp;
        temp[0] = a[0] * b[0];
        temp[1] = a[1] * b[1];
        return temp;
    }
    function div(uint[2] memory a, uint[2] memory b) public pure returns (uint[2] memory) {
        uint[2] memory temp;
        temp[0] = variables[0];
        temp[1] = b[0] / a[0];
        uint temp2 = a[1] * b[0] - a[0] * b[1];
        return temp;
    }

    function test() public pure {
        uint[2] memory initial_memory = [1, 2];
        uint[2] memory a = variables;
        variables = add(a, initial_memory);
        uint[2] memory b = swap(a, initial_memory);
        variables2 = mult(a, b);
    }
}

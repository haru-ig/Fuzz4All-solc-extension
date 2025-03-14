pragma solidity ^0.8.0;
contract Mutated {
    constructor() {
        var x;
        x = [i for i = 0, i < 10];
        x = [1, 2, 3];
        x = [i for i in 2, i < 10];
        x = [1, 2, 3 for i in 2, i < 10];
    }
}

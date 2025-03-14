pragma solidity ^0.8.0;

contract GeneticAlgorithm {
    uint[] genes;



    constructor() {
        genes[0] = 6;
        genes[1] = 3;
    }


    function run() public {
        genes[2] = 7;
        genes[0] = 6.3;
        genes[1] = 4.3;
        genes[3] = 1;
        genes[4] = 3;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock2Mutator3 {
    uint _var = 3;
    uint constant constantMutant = 4;
    uint public x;

    constructor() {
        x = 1;
    }

    function test() external {
        x = 10;


        constantMutant = 2;


        x = add(x, constantMutant);


        _var = 4;




        constantMutant += 10;
    }
}

pragma solidity ^0.8.0;
contract MutatedAssemblyContract00{

    uint internal contractCounter;

    uint constant c = 0x00;
    function multiply() public pure{

    if (contractCounter > 0){
        contractCounter = contractCounter - 1;
    } else {
        contractCounter = 25479782;
    }
    }
}
contract MutatedAssemblyContract01{

    uint internal contractCounter;

    uint constant c = 0x00;
    function a() public pure {
    if (contractCounter > 0) {
        contractCounter = contractCounter - 1;
    } else {
        if (contractCounter == 0) {
            contractCounter = 25485762;
        } else {
            contractCounter = contractCounter - 1;
        }
    }
    }

    function b() public pure {
    if (contractCounter > 0) {
        contractCounter = contractCounter - 1;
    } else {
        if (contractCounter == 0) {
            contractCounter = 3;
        } else {
            contractCounter = contractCounter - 4;
        }
    }
    }
}

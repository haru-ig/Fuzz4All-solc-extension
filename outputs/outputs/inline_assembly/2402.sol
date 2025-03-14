pragma solidity ^0.8.0;
contract MutatorTest
{

    function mutate1() public {
        Mutator(0xFDFEDEECFCDFCDC024C37).multiply(12);
    }


    constructor () public {
        try {
            Mutator(0xFDFEDEECFCDFCDC024C37).multiply(12);
        } catch (Exception e) {
            B = 600;
        }
    }

    function mutate2() public {
        Mutator(0xFDFEDEECFCDFCDC024C37).increase(12);
        Mutator(0xFDFEDEECFCDFCDC024C37).increase(12);
    }


    function calculate() public pure returns (uint) {
        return 1;
    }
}

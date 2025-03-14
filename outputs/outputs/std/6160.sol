pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent1 {





    contract Mutant {
        function f(uint[] memory array) public {
        }
    }








    contract Mutated {
        function f(uint[] memory array) public {
        }

        function f2() public {
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample14 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory x;

        uint256 y;
        assembly {
            y := x
            y.x := 2
        }
    }
}

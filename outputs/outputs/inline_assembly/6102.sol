pragma solidity ^0.8.0;

contract MutatedSemanticallyEquivalentAssemblyExample14 {
    struct Mutated {
        uint256 y;
    }
    function main() public pure {
        Mutated memory x;
        x.x+=2;
        x.x++;
        if (x.x!=2) {
            x.y += x.x;
        }
    }
}

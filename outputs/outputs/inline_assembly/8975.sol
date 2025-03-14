pragma solidity ^0.8.0;
contract SuitableForModifications
{
    function test(uint256 a) public pure {
        if (a % 2 == 0) { return; }
        asm {

            EquivalentSolidity2.test(a)
            EquivalentSolidity2.test()
            EquivalentSolidity2.test(3)
        }
    }
}

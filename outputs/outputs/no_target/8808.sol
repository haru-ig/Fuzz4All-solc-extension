pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivilentMutatedMutated {
    uint constant public _Amount64  = 14000;
    uint constant public _Value2 = 15000;
    function mintA () public {
        _Amount64++;
        _Value2--;
    }
}

pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivilentMutants {
    uint constant public _Amount64Mutant = 400;
    uint constant public _Value2Mutant = 500;
    event Mint (uint amount_, uint value_);
    modifier nonEquivilant () {
        emit Mint(_Amount64Mutant, _Value2Mutant);
        _;
    }
    function mintB () public nonEquivilant {
    }
}

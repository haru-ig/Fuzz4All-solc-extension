pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivilentMutations {
    uint constant _Amount64  = 14000;
    uint constant _Value2 = 15000;
    event Mint1 (uint amount_, uint value_);
    event Mint2 (uint amount_, uint value_);
    function mintA () public {
        Mint1(_Amount64, _Amount64);
        Mint2(_Amount64, _Value2);
    }
}

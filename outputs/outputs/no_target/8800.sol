pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivilent2 {
    uint constant public _Amount65 = 5000;
    uint constant public _Value25 = 5000;
    event Mint (uint amount_, uint value_);
    function mintA () public {
        emit Mint(_Amount65, _Value25);
    }
}

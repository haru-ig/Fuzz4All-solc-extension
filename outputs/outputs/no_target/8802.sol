pragma solidity ^0.8.0;
contract MutatedABIv08SemanticsAreNotEquivilent {
    uint constant public _Amount64 = 1400;
    uint constant public _Value2 = 1400;
    event Mint (uint amount_, uint value_);
    function mintA () public {
        emit Mint(_Amount64, _Value2);
    }
}

pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivilent {
    event Mint (uint amount_, uint value_);
    function mintA () public {
        uint _amount64 =  1400;
        uint _value2 =  1500;
        emit Mint(_amount64, _value2);
    }
}

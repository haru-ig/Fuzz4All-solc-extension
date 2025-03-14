pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreNotEquivilent {
    function mintB () public pure {
        uint _amount = 1400;
        uint _value = 1500;
        emit Mint(_amount, _value);
    }
}

pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreTheyEquivilent {
    event Mint (uint amount_, uint value_);
    function mintC () public pure {
        uint _amount = 1400;
        uint _value = 1500;
        mintA();
    }
}

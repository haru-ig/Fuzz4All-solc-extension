pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreNotEquivilent {
    event Mint (uint amount_, uint value_);
    function mintA () public {
        address _address = 0x01234567890ab345678901234567890123456789;
        uint _amount64 =  1400;
        uint _value2 =  1500;
        emit Mint(_amount64, _value2);
    }
}
contract NonEquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint amount_, uint value_);
    function mintA () public {
        bytes32 _address = 0x01234567890ab34567890123456789012345678901234567890123456789012348901234567890;
        uint _amount64 =  1400;
        uint _value2 =  1500;
        emit Mint(_amount64, _value2);
    }
}
contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint amount_, uint value_);
    function mintA () public {
        bytes32 _address = 0x01234567890ab345678901234567890123456789012345678901234567890123456789012345678901234567890;
        uint _amount64 =  1400;
        uint _value2 =  1500;
        emit Mint(_amount64, _value2);
    }
}

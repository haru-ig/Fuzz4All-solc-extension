pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint256 value_);
    function mintA () public {
        uint _value2 =  1400;
        uint _amount64 =  1500;
        emit Mint(_amount64);
    }
}











contract EquivalentABIv08SemanticsAreEquivilentv2 is EquivalentABIv08SemanticsAreEquivilent {
    event MintA (uint256 amount, uint256 value);
    function mintABeta () internal {
        uint _value =  1000;
        uint _amount =  1000;
        emit MintA(_amount, _value);
    }
}

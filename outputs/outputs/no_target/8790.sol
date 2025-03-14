pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint256 amount_, uint256 value_);
    function mintA () public {
        uint256 _amount2 =  1500;
        uint256 _value2 =  1400;
        emit Mint(_amount2, _value2);
    }
}

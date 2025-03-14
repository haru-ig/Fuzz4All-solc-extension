pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint256 amount_, uint256 value_);

    function mintA () public {
        uint _value2 =  1400;
        uint _amount64 =  1500;
        emit Mint(_amount64, _value2);
    }

}

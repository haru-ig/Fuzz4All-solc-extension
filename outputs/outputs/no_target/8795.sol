pragma solidity ^0.8.0;
contract EquivalentABIv06SemanticsAreEquivalentToOld {
    event Mint (uint amount_, uint extra32_);
    function mintA () public {
        uint _amount64 =  1400;
        uint _extra64 =  1500;
        emit Mint(_amount64, _extra64);
    }
}

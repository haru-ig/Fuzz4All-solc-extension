pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreNotEquivilent {
    event Mint (uint amount_, uint value_);
    function mintA () public {
        uint _amount64 =  uint64(_amount11);
        uint _value2 =  uint32(_value9);
        emit Mint(_amount64, _value2);
    }
    function mintB() public {
        uint _amount64 =  uint64(_amount11);
        uint _value2 =  uint160(_value9);
        emit Mint(_amount64, _value2);
    }
}

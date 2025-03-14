pragma solidity ^0.8.0;
contract modifierRecovered{
    function f() public view returns (uint256){
        uint8 _value;
        assembly {_value}
        return _value;
    }
}

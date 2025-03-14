pragma solidity ^0.8.0;
contract OptimizelyExample108 {

    mapping(address => uint) private _values;
    uint internal value;
    modifier valueChange(uint _newValue){
        if(value == 2**254)  return;
        value = _newValue;
        _;
    }
    function setValue(uint _newValue) public valueChange(_newValue) _values[msg.sender] += _newValue;
}

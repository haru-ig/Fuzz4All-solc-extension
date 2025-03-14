pragma solidity ^0.8.0;
contract OptimizelyExample108 {
    uint internal value = 1 << 30;
    modifier valueChange(uint _newValue){
        if(value > 2**255)  return;
        value = _newValue;
        _;
    }
    modifier valueChange2(uint _newValue){
        value = _newValue << 1;
        _;
    }
    function setValue(uint _newValue) public valueChange(_newValue) valueChange2(_newValue) {}
}

pragma solidity ^0.8.0;
contract OptimizelyExample108V2 {
    uint internal value = 1 << 30;
    uint internal value2 = 1 << (30 * 2);
    modifier valueChange(uint _newValue){
        if(value == 2**255)  return;
        value = _newValue % 2**300;
        value2 = _newValue % 2**255;
        _;
    }
    modifier valueChange2(uint _newValue){
        value = _newValue;
        value2 = (value * 2) % 2**300;
        _;
    }
    function setValue(uint _newValue) public valueChange(_newValue) valueChange2(_newValue) {}
}

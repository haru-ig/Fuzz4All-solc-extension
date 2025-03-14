pragma solidity ^0.8.0;
contract D{
    uint public names;
    mapping(uint=>bool) public isName;
    uint public value;
    function setNames_2(uint _value) public {
        isName[names] = true;
        names = _value;
    }
    function getName() public view returns (uint) {
        return names;
    }
    function setNames_3(uint _name, bool _b) public returns(bool) {
        isName[_name] = _b;
        isName[names] = true;
        value = _name + _b + _value;
        value = _value;
        return true;
    }
}

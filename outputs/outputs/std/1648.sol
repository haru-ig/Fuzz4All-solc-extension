pragma solidity ^0.8.0;
contract ArrayAccessApp {
    function insert(uint _index, address _value) public {
        address[] storage array = elements;
        setElement(array, _index, _value);
    }
    address[] internal elements;
    function pushElement(address _value) public {
        address[] storage array = elements;
        array.push(_value);
    }
}

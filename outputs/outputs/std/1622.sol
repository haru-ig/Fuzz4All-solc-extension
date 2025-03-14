pragma solidity ^0.8.0;
contract MutatedApp {
    address[] private _array;
    function setArr(uint0 value) public { _array = value._array; }
}
contract App {
    uint _value;
    function setNewArr(uint0 value){_value=value;}
}

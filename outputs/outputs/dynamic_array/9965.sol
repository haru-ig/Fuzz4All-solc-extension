pragma solidity ^0.8.0;
contract SemanticTest4 {
    uint8 x;
    constructor () public {
        x = 5;
    }
    function incrementIndex() public {
        incrementIndexTo(50);
    }
    function incrementIndexTo(uint8 _value) public {
        x += _value;
    }
    function decrementIndex() public {
        decrementIndexTo(50);
    }
    function decrementIndexTo(uint8 _value) public {
        x -= _value;
    }
    function assignX(uint8 _value) public {
        x = _value;
    }
}

pragma solidity ^0.8.0;
contract FallbackModifier {
    uint a = 42;
    bool valid = false;
    modifier ifValidWithValidX() {
        require(valid, "Invalid condition");
        _;
    }
    function setSomeValueFalse() public {
        valid = false;
    }
    function accept2(bytes memory) public {
        setSomeValueFalse();
        ifValidWithValidX();
    }
    constructor() public {}
}

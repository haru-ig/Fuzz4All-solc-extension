pragma solidity ^0.8.0;
contract ValueWithFallback3 {


    function _fallback(uint) public payable { }

    constructor(address _value) {
        value = _value;
    }

    function example3() public payable {
        value = _fallback.value;
    }
}

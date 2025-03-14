pragma solidity ^0.8.0;
<fim_middle>interface Mutator {
    uint public originalValue;
    function set(uint newValue) external;
}
contract CallerTest {
    using FallbackCaller for FallbackCaller.FalibleCaller;
    using Mutator for Mutator.Mutator;
    uint initialValue = 12000;
    uint constant defaultNumber = 2;
    uint public value;
    function setNumber(uint _number) public {
        value = _number;
    }
    constructor() public {
        setNumber(defaultNumber);
    }
    function mutatorToFallback() public {
        Mutator mutator = new Mutator();
        mutator.set(defaultNumber);
    }
    function testFallback() public {
        value = 0;
        value = originalValue;
    }
}

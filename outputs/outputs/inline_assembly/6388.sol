pragma solidity ^0.8.0;
contract MutationExamples is MixedContactsExample28 {
    uint public v;
    constructor() public {
        increaseByOneAndFive(9378);
        increaseBy10And2();
    }
    function increaseBy10And2() public {
        i = i + 10;
        v = v + 10;
        v = v + 20;
    }
}

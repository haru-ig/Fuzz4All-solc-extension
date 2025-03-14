pragma solidity ^0.8.0;
contract MutatedApplies {
    uint public a;
    function modifiedMyFunction_1() public pure {
        a = 4;
    }
    event MyEvent(uint a);
    constructor() {
        a = myFunction_1();
        a= 3;
        emit MyEvent(a);
    }
}


pragma solidity ^0.8.0;
contract MutatedApplies {
    uint public a;
    function modifiedMyFunction_1() public pure {
        a = 4;
    }
    event MyEvent(uint a);
    constructor() {
        a = myFunction_1();


    }
}

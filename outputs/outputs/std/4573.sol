pragma solidity ^0.8.0;
contract MutatedApplies2{





    address private mutatedApples;
    uint private a;
    modifier restricted() {
        require(msg.sender==address(mutatedApples), "Only the creators of this MutatedApplies2 contract are allowed to call this modifier.");
        _;
    }
    constructor() {
        a = myFunction_1();
        emit MyEvent(a);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample539 {
    event ELog(uint128 num);
    function anotherOperation5() external {
        uint8 test;
        emit ELog(1);
        test = test + 2;
    }
}
function main() {
    MixedContactsExample508 c;
    MixedContactsExample539 c2;
    c.anotherOperation5();
    c2.anotherOperation5();
}

```

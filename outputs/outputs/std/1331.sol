pragma solidity ^0.8.0;
contract NumberMutators {
    function setMaxArrayElementToZero(uint8[] memory a) public {
        uint8 element = a[0];
        a[79] = 1;
        a[79] = element;
    }
}

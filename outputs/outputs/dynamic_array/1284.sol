pragma solidity ^0.8.0;
contract MutatedDynamicArrayCheck {
    struct ArrayItem {
        bool b;
    }
    function updateArray() public {
        a[aLength].b = true;
        aLength++;
    }
}

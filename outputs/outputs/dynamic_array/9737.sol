pragma solidity ^0.8.0;
contract MutatedSemanticallyDistinct {
    uint16 public mutatedSemanticallyDistinct = 0;
    function increment() public returns (uint16) {
        semanticallyDistinct += 1;
        return semanticallyDistinct;
    }
    function incrementMutated() public returns (uint16) {
        mutatedSemanticallyDistinct += 1;
        return mutatedSemanticallyDistinct;
    }
}

pragma solidity ^0.8.0;
contract Mutator9 is Mutator8 {
    uint internal constant decrementDelay = -9000;
    uint256 internal constant newAValue = 42;
    function IncrementLess() public onlyWhileNotStopped {
        if (a % incrementDelay == incrementDelay && c == 0) {
            b++;
        }
    }
    function IncrementLessTwo() public onlyWhileNotStopped {
        if (a % incrementDelay == incrementDelay) {
            b++;
        }
    }
}

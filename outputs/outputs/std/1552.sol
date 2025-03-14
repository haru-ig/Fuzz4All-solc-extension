pragma solidity ^0.8.0;
contract SemanticsEquivalentProgram {
    uint256 test = 6;
    function myInit(uint256 a, uint256 b) public {
        test = a + (b * test) - (a * b) + 1;
    }
    function gimmeTheAnswer(uint256 a, uint256 b) public pure returns (uint256) {
        return test + a + (b * test);
    }
}
contract MyContract {
    uint256 public myField;
    uint256 public myPublicVariable;
    uint256 public myPublicVariableWithoutInitialization;
    uint256 private myFieldWithoutInitialization;
    uint256 internal var;
    uint256 constant immutable myConstants = 7;
    uint256 constant myConstants = 7;
    event MyEventLog(uint256 myEvent);
}

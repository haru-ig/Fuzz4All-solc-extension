pragma solidity ^0.8.0;
contract MutateSemanticYulContract {
 uint internal contractCounter;
 uint constant c = 10;
    function mutateYul() public {
        uint old = SemanticYulContract(0x30).subtract(2*c);
    }
    function mutateYul2() public {
        uint old = SemanticYulContract(0x30).power(122);
    }
    function mutateYul3() public {
        SemanticYulContract(0x30).power(122);
    }
}

pragma solidity ^0.8.0;
contract MutatedContract {
    uint public newResult;
    bool public boolFalseRes = false;
    address public boolAddress = address(this);
    bool mutatedBool = boolFalseRes;
    uint mutatedUint;

    event NewResult(uint, bool);

    function modify() public {
        mutatedResult = mutatedUint + 3;
        uint zero = 0;
        newResult = mutatedResult + zero;
        bool mutatedBoolOne = (!mutatedBool) | (mutatedBool);
        newResult = mutatedBoolOne | boolFalseRes;
        require(newResult == (newResult | mutatedBoolOne << 1));
    }
}

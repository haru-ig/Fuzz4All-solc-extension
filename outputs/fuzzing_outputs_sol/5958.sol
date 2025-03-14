pragma solidity ^0.8.0;
contract MutatedFunction {
    function main() public {
        uint originalResult = 2 - 5;
        uint result = 15 / originalResult;
        assert(result == 12);
    }
}

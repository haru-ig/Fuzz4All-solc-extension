pragma solidity ^0.8.0;
contract Emulator {
    function add(uint x, uint y) public returns(uint result) {
        return x + y;
    }
}
contract EmulatorForInlineAssembly {
    function add(uint x, uint y) public returns(uint result) {
        uint result = x + y;
        x *= y;
        x = 1;
        return x;
    }
}

contract ContractWithNoProblems {
    function callExternalFunction() public returns(uint) {
        uint result = 1;
        (result, );
        return result;
    }
    function returnWithoutReturn() public returns (uint) {
        return 1;
    }
}

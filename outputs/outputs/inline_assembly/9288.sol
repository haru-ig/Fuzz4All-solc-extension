pragma solidity ^0.8.0;
contract B {
    uint MAX_INTEGER;
    uint RANGE = 10;
    uint num1;
    uint num2;
    uint r;
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
    function getOutputs() public returns(uint r2) {
        r2 = num1 + num2 + mul(num1, num2) - r;
    }
    function mul(uint j, uint k) public returns(uint) {
        return ((j * ((uint256)k)) % (RANGE + 1));
    }
}

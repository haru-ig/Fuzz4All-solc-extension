pragma solidity ^0.8.0;
contract ArrayExampleContract {
    uint[] memory _array;
    function pushValue() public {
        bytes32 hash = keccak256(abi.encode("test"));
        bytes32 hash2 = keccak256(abi.encode(uint(1)));
        uint256 int;
        assembly {int := extcodehash(hash)}
        _array.push(int);
        assembly {int := extcodehash(hash2)}
        _array.push(int);
    }
    function getSize() public view returns (uint256) {
        return _array.length;
    }
    function get() public view returns (uint256) {
        return _array[0];
    }
}








pragma solidity ^0.8.0;
contract MathExampleContract {
    uint32 myNum = 2;
    function addition() public returns (uint256) {
        return myNum + 123;
    }
}

pragma solidity ^0.8.0;
contract MathExampleCompileFailingContract {
    uint8 c;
    function multiplication(uint8 x, uint8 y) public pure returns (uint8) {
        return x * y;
    }
    function addition(uint8 x, uint8 y) public pure returns (uint8) {
        return x + y;
    }
    function division(uint8 x, uint8 y) public pure returns (uint8) {
        return x / y;
    }
    function subtraction(uint8 x, uint8 y) public pure returns (uint8) {
        return x - y;
    }
    function power(uint8 x, uint8 y) public pure returns (uint8) {
        return uint8(x ** y);
    }
    function power0() public pure returns (uint8) {
        return 0;
    }
    function power1() public pure returns (uint8) {
        return 1;
    }
    function power2() public pure returns (uint8) {

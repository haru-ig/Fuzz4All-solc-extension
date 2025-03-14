pragma solidity ^0.8.0;
contract A is mutantSolidity68103512093Library {
    function test() pure public returns (uint) {
        return 2;
    }
    uint public x;
    uint[] public storageArray;
    function setX(uint y) public {
        x = y;
        storageArray.push(y);
    }
    function read() public view returns (uint) {
        return storageArray.pop();
    }
}
A a;
a.setX(42);
uint r = a.read();
A a1;
a1.read();

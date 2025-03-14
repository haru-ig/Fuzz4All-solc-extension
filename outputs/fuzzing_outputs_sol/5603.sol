pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f() public pure returns(uint, uint a) {
        (uint a, uint) memory storage memoryAndStorage = (uint(42), 8);
        a = memoryAndStorage.a;
        uint ret2 = memoryAndStorage.a+2;
        return (memoryAndStorage.b, ret2);
    }
}

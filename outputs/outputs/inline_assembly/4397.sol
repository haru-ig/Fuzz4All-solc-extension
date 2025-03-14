pragma solidity ^0.8.0;
contract Test1 {
    uint256 myBalance;
    uint256[3] public myArray;
    function test(uint x) public {
        myBalance = Emulator.add(myBalance, x);
        myArray[0] = x;
        myArray[1] = x;
        myArray[2] = x;
    }
}

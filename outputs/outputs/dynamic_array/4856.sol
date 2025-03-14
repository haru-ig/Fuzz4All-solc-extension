pragma solidity ^0.8.0;
contract Test5 {
    string[3] memoryArray;
    function ArrayString() public {
        memoryArray[7]=memoryArray[7]+"7";
        require(memoryArray[3]==1,"");
    }
}

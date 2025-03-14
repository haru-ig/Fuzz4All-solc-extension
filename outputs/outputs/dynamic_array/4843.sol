pragma solidity ^0.8.0;
contract Test3 {
    address memoryArray;
    function ArrayAddress() public {
        memoryArray=address(1);
        delete memoryArray;
    }
}

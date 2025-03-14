pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;
    uint256[] public bArray2;
    function assignArray (uint x) public pure returns (uint){
        bArray[0].assign(x);
        return 42;
    }
    function assignArrays (uint x1, uint x2) public pure returns (uint){
        assign(x1);
        assign(x2);
        return 42;
    }
    function modifyArray (uint x1, uint x2, uint x3) public pure returns (uint){
        assignArray(x1);
        assignArray(x2);
        assignArray(x3);
        return 42;
    }
}

contract A {
    uint256[] public bArray;
    function test () public pure returns (uint){
        uint x = A.assignArray(20);
        x = A.assignArray(x);
        x = A.modifyArray(20, x, x);
        x = A.modifyArray(x, x+1, x);
        return 42;
    }
}

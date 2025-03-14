pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint256 public _mintAmount;
    uint256[4] public myArray;
    constructor() public {
        myArray[0] = 99;
        myArray[1] = 99;
        myArray[2] = 99;
        myArray[3] = 99;
        _mintAmount = 3;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
    function updateArray(uint256 index,uint256 value) public {
        myArray[index] = value;
    }
    function printArray() public view {
        for (uint256 i; i < 4; i++) {
            if(i!= 3) print(myArray[i]);
        event("myArr[" + myArray[i] + "]");
            }
        event("myArr[" + _mintAmount + "]");
            }
    }
}

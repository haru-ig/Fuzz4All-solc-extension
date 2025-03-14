pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint256[] public myArrays;
    uint256[] myList;
    constructor() public {
        for (uint256 i = 0; i < 8; i++) {
            myArray[i] = i;
        }
        myList = [1, 2, 3, 4, 5, 6, 7, 8];
    }
    function setMint(uint256[] memory _mint) public {
        myList = _mint;
    }
    function append(uint256 _add) public {
        myList.push(_add);
    }
    function prepend(uint256 _add) public {
        myList.unshift(_add);
    }

}

pragma solidity ^0.8.0;
contract LotteryWithDynamicArrayAssignmentNoEvm {
    address[] internal testArray;
    constructor() public {
        testArray[0]=address(this);
    }
    function addArrayElement() public{
        testArray[1]=address(this);
    }
    function getDynamicArray() public view returns(address[] memory){
        return testArray;
    }
}
```

<br>
<br>
<br>
<br>
<br>
 <br>
 <br>
 <br>
 <br>



## Questions 🤔?

Ask any questions on [Discord](https:

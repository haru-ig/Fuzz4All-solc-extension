pragma solidity ^0.8.0;
contract Test7 {
    uint32[] private memoryIntArray;
    uint256[3] private memoryIntArray2;
    uint32 memoryArray3;
    constructor() public {
        memoryArray3 = 9;
        memoryIntArray2[0] = memoryArray3;
    }
    function Test7() public {

    }
}



pragma solidity ^0.8.0;
contract Test8{
    uint32[] private memoryIntArray;
    bool constant bool_result = memoryIntArray.length < 15;
    constructor() public {
        require(bool_result == true,"");
    }
}

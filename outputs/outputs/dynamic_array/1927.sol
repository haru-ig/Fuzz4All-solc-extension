pragma solidity ^0.8.0;
contract ArrayAssignmentWithIndexAssignment {

    uint256 [] public array2;
    constructor(uint256 value) public {
    array2[0] = value;
    for(uint256 i=1; i<array2.length; i++) {
        array2[i] = array2[i-1]+1;
    }
    }
    constructor() public {
    array2[1] = 1;
    for(uint256 i=0; i<array2.length; i++) {
        array2[i] = i+1;
    }
    }
}
pragma solidity ^0.8.0;
contract ArrayAssignmentWithIndexAssignmentOld{
    uint256 [] public array2;
    constructor(uint256 value) public {
    array2[0] = value;
    for(uint256 i=1; i<array2.length; i++) {
        array2[i] = array2[i-1]+1;
    }
    }
    constructor() public {
    array2[1] = 1;
    for(uint256 i=0; i<array2.length; i++) {
        array2[i] = i+1;
    }
    }
}

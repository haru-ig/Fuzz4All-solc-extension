pragma solidity ^0.8.0;
contract Test1865{
    uint16 x = 2;
    uint16[] xDynArr1;
    mapping (uint16=>uint16) xDynArr2;
    uint256[] xStrArr1;
    constructor() public {
        set(1);
    }
    function set(uint16 number) public {
        x = number;
        x = 3;
    }
}

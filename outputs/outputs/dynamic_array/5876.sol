pragma solidity ^0.8.0;
contract Test1865IS{
    uint16 x = 2;
    uint16[] xDynArr1;
    uint256[] xStrArr1;
    constructor() public {
        set(1);
    }

    function set(uint256 number) public {
        x = 2;
        x = number;
        x = 3;
    }
}

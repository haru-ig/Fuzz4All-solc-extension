pragma solidity ^0.8.0;
contract Test1866I {
    uint16 public x = 2;
    uint16[] public xDynArr1;
    uint256[] public xStrArr1;
    constructor() public {
        set(1);
    }

    function set(uint16 number) public {
        x = number;
        x = number + 1;
    }

}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256[][] elements;
    constructor() public {
        elements = new uint256[2][];
        elements[0] = 300;
        elements[1] = 500;
    }
    function use() public {
        elements = new uint256[3][];
    }
}




pragma solidity ^0.8.0;

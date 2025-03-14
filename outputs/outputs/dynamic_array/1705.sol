pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256[] internal elements;
    constructor () public {
        elements = new uint256[](5);
        elements[0] = 125;
        elements[1] = 150;
        elements[2] = 175;
        elements[3] = 200;
        elements[4] = 225;
    }
    function use() public {

        delete elements[1];
    }
}
pragma solidity ^0.8.0;

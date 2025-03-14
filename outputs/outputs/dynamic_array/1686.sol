pragma solidity ^0.8.0;
contract MutatedDynamicArrays11 {
    uint256[] elements;
    function mutate() public {
        elements = new uint256[](3);
        elements[0] = 200;
        elements[1] = 200;
        elements[2] = 200;
    }
}

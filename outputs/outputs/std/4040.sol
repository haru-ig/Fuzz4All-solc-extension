pragma solidity ^0.8.0;
contract Array {
    uint public totalCount = 0;
    uint[] public array1;
    function funcSet(uint e1, uint e2) public {
        array1[totalCount] = e1;
        array1[totalCount + 1] = e2;
        totalCount += 2;
    }
}

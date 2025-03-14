pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256 idx;
    uint256 val;
    function set(uint256[] memory) public {
        array[idx] = val;
    }
    constructor() public {
        array= new uint256[](3);
        array[1] = 6;
        array[3] = 7;
        function set(uint256 [] memory) public {
            return;
        }
    }
}

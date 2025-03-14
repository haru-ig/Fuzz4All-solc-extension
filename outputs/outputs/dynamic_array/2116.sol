pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2_2{
    uint256[][2] private parentArray = new uint256[](1);
    uint256[][2] public nestedArray = new uint256[][][](1)[];
    uint256[] private staticChildArray = new uint256[](0);
    function get(uint256[] memory arr, uint256 idx) public view returns (uint256) {
        uint256 t = nestedArray[arr[idx]][0][0];
        nestedArray[arr[idx]][0][0] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) public {
        require(nestedArray[arr[idx]][0][0] == 0);
        nestedArray[arr[idx]][0][0] = val;
        uint256[] memory temp = nestedArray[arr[idx]];
        temp[0][0] = 0;
    }
}

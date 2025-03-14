pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArrayOfSmallNumbersModTwo {
    uint256[] public a;
    function callTest01(uint128[] memory _arr) public view returns (uint128[] memory) {
        uint256[] memory arr1 = _arr;
        uint256 size_of_arr = arr1.length;

        for (uint256 i=0; i<size_of_arr; i++) {
            uint256 x = arr1[i];
            arr1[i] = x/2;
            arr1--;
            }
        return arr1;
    }
}

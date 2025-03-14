pragma solidity ^0.8.0;
contract Mutated
{
    constructor() public {
        uint256[] storage arr = new uint256[](10);


        for (uint256 i = 0; i < 10; i++) {
            arr[i] = 1000000 * (i + 1);
        }
        uint256[] memory arr2 = arr;

        uint256[] storage arr3 = new uint256[](1);

        arr3[0] = 1199999;
        uint256[] memory arr4 = arr3;

        uint256[] memory a;

        a = arr3;



    }
}

pragma solidity ^0.8.0;
contract Array14_modified_solidiarity{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    modifier Mutate_array_3(uint256[] memory arrayOf1, uint256[] memory arrayOf2, uint256[] memory arrayOf3){
        arrayOf3; arrayOf2; arrayOf1;
        arrayOf1 = arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf3 = arrayOf2;
        _;
        arrayOf1 = arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf3 = arrayOf2;
    }
}

pragma solidity ^0.8.0;
contract Array15_modified_solidiarity{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    modifier Mutate_array_3(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3){
        arrayOf3; arrayOf2; arrayOf1;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        _;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
    }
}

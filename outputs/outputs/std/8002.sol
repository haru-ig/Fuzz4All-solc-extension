pragma solidity ^0.8.0;
contract Array16_semantical_equivalent_solidiarity{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
   constructor () {
        uint256[] memory arrayOf = new uint256[](3);
        arrayOf[0] = 2189;
        arrayOf[1] = 7845;
        arrayOf[2] = 123;
        arrayOf1 = arrayOf;
        arrayOf2 = arrayOf;
        arrayOf3 = arrayOf;
    }
}
contract Array14_modified_semantical_equivalent_solidiarity{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
}

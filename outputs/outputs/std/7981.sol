pragma solidity ^0.8.0;
contract Array12_solidiarity {
    uint256[] memory arrayOf1;
    uint256[] memory arrayOf2;
    uint256[] memory arrayOf3;
    modifier Mutate_array(uint256[] memory arrayOf1) {
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
        assembly {

            array1[0] := array2[0]

            array2[0] := array3[0]
        }
        _;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
    }
}

pragma solidity ^0.8.0;
contract Array_mutatons2{
    uint256[] internal arrayOf1;
    uint256[] internal arrayOf2;
    uint256[] internal arrayOf3;
    uint256[] internal array4;
    uint256[] memory external arrayOf1;
    uint256[] memory external arrayOf2;
    uint256[] memory external arrayOf3;
    uint256[] memory external array4;
    modifier Mutate_array_memory(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
        _;
        arrayOf3;
        arrayOf3 = arrayOf1; arrayOf1 = array4;
        arrayOf2;
        arrayOf3 = arrayOf2; arrayOf2 = array4; arrayOf3 = arrayOf3;
        arrayOf1;
        array4 = arrayOf1; arrayOf1 = arrayOf3;
        arrayOf2;
        arrayOf2 = arrayOf3; arrayOf3 = array4;
        arrayOf3;
        arrayOf1 = arrayOf2; arrayOf2 = arrayOf3;
        arrayOf2;
        arbitrary_expression();
        arbitrary_expression();
        arbitrary_expression();
        arbitrary_expression();
        array4;
        array4 = array4;
        arrayOf3; arrayOf1 = arrayOf3; arrayOf3 = array4; array4 = arrayOf1;
        arrayOf2;
        arrayOf2 = arrayOf2; array4 = arrayOf2;
        arrayOf3;
        arrayOf3 = arrayOf2; arrayOf2 = array4; arrayOf3 = arrayOf3;
        array4;
        array4 = array4;
        arrayOf1; arrayOf1 = arrayOf2; arrayOf2 = array4; arrayOf1 = arrayOf3; array4 = arrayOf3;
        arrayOf2;
        arrayOf2 = arrayOf1; array4 = arrayOf2;
        arrayOf3;
        arrayOf2 = arrayOf3; arrayOf3 = array4;
        array4;
        array4 = array4;
        _;
    }
}

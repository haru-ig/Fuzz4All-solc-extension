pragma solidity ^0.8.0;
contract Array16{
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public arrayOf4;
    modifier Mutate_array_4(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
        arrayOf3; arrayOf2; arrayOf1;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        array4; arrayOf1; arrayOf2; arrayOf3; arrayOf2; arrayOf3; arrayOf1;
        _;
        arrayOf3  = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        arrayOf1 = array4;
        array4 = arrayOf1;
        _;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        arrayOf1 = array4;
        array4 = arrayOf1;
    }
    function Sum (uint256[] memory arrayOf1) public  pure {
        uint256 sum;
        sum = 0;
        for (uint i=0; i<arrayOf1.length; i++){
            sum = sum + arrayOf1[i];
        }
        return sum;
    }
}

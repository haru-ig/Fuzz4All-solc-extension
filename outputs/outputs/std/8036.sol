pragma solidity ^0.8.0;
contract Array_modified_modified{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    modifier Mutate_array4(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
      if(arrayOf1.length < arrayOf3.length)
        _;
      else
        _ = arrayOf1[Math.min(arrayOf1.length,arrayOf3.length)-1];
      _;
    }
}

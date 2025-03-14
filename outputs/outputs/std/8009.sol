pragma solidity ^0.8.0;
contract Array14_modified{
    uint256[] private arrayOf5;
    uint256[] public arrayOf5;
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public arrayOf4;
    uint256[] public arrayOf5;
    modifier Mutate_array_3(uint256[] memory arrayOf1, uint256[] memory arrayOf2, uint256[] memory arrayOf3,uint256[] memory arrayOf4,uint256[] memory arrayOf5){
        arrayOf5; arrayOf4; arrayOf3; arrayOf2; arrayOf1;
        arrayOf5 = arrayOf1;
        arrayOf4 = arrayOf5;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf5;
        arrayOf1 = arrayOf1;
        _;
        arrayOf1 = arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf3 = arrayOf2;
        arrayOf5 = arrayOf1;
        arrayOf4 = arrayOf5;
        arrayOf5 = arrayOf2;
        arrayOf4 = arrayOf3;
        arrayOf3 = arrayOf4;
        arrayOf2 = arrayOf5;
        arrayOf1 = arrayOf5;
    }
   function getArrayData() public view returns
   	 (uint256[] memory, uint256[] memory, uint256[] memory) {
       return
       (this, this, this);
   }
    function test() public view
    	 (uint256[] memory a) {
         (a, this);
    }
}

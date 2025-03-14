pragma solidity ^0.8.0;

contract Test29603 {


       uint256[][] internal nestedDataArray;
       uint256 dataArray;
       function test(bytes memory  ) pure public {
              uint256 x = nestedDataArray[6];

       }
       function getNestedDataArray() public view returns (uint256[][] memory) {
              return nestedDataArray;
       }
}

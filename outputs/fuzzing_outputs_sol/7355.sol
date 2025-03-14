pragma solidity ^0.8.0;
contract HighCostFallback{
  receive() external payable{
      uint[2] memory memoryTest = [20, 1];
      uint[4] memory memoryTest2 = [
            20, 1, 1, 1
           ];
      uint[6] memory memoryTest3 = [
            20,
            1,
            1,
            1,
            1,
            1
          ];
      uint memoryTest4 = 20;
      bool result = memoryTest5;
  }




  function expensiveResultFallback() public pure returns (uint){
      return 1;
  }





  function expensiveResultNoPayableFallback() private pure returns (uint){
      (uint result) = (1);
      return result;
  }

  bool private memoryTest5 = true;


  constructor() public{
      uint256 result = 1;
      result = expensiveResultNoPayableFallback();
      result = expensiveResultFallback();

      memoryTest5 = false;
      if (memoryTest5) {
          uint256 b = 1;
          bool b2;
          contract SomeContract {
              uint256 somePublicField;
              function SomeContract(uint256 somePublicFieldParam) public{
                  somePublicField = somePublicFieldParam;
              }
          }
          b2 = b;
      }
  }
}

contract Caller {
    uint a;
    uint b;
    uint c;



    fallback() public payable {
        a = 1;
        b = 2;
        c = 3;

        uint32 uint256Result = 1;
        uint32 uint256Result2 = 2;
        uint32 uint256Result3 = 3;

        uint result = 1;
        result = (uint256Result + uint256Result2 + uint256Result3);

        c = a - b + c;

        uint32 uint32

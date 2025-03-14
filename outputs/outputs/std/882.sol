pragma solidity ^0.8.0;
contract Mutate7To11
{
   function mutate7() public pure
   {
      uint _number;

      assembly {
         _number := 0x00000000000000000000000000000000000000000000000000000000000001
      }

      uint256[] memory array;
      array.push(_number);
      emit Mutate7Success(array);
   }

   event Mutate7Success(uint[] array);
}

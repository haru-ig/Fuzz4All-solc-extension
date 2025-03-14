pragma solidity ^0.8.0;
contract ArrayMut2 {
   uint8[] arr = [0, 0, 0, 1, 1, 2, 2, 2];
   int i;
   function a() public  {
     arr[i++] = 13;
   }
}

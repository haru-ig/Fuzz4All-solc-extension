pragma solidity ^0.8.0;
contract Array
{
    uint[] internal _arr;
   uint256 constant MIN_UNSIGNED_INT = type(uint256).min;
   uint256 constant MAX_UNSIGNED_INT = type(uint256).max;
   uint256 constant MIN_UINT_LONG = type(uint256).min;
   uint256 constant MAX_UINT_LONG = type(uint256).max;
   function add(uint256 a, uint256 b) public pure
   {
      return a + b;
   }
   function sub(uint256 a, uint256 b) public pure
   {
      return MIN_UNSIGNED_INT - b;
   }
   function mul(uint256 a, uint256 b) public pure
   {
      return a * b;
   }
   function div(uint256 a, uint256 b) public pure
   {
      return MIN_UNSIGNED_INT / b;
   }

   function findMax(uint256[] memory arr) public pure
   {
      uint256 c = MIN_UINT_LONG;
      for(uint256 i=0; i < arr.length; ++i)
      {
         if (arr[i] < c)
            c = arr[i];
      }
      return c;
   }

   function findMin(uint256[] memory arr) public pure
   {
      uint256 c = MAX_UINT_LONG;
      for(uint256 i=0; i < arr.length; ++i)
      {
         if (arr[i] > c)
            c = arr[i];
      }
      return c; }

   function setArr(uint256[] memory arr) public pure
   {
      _arr[0] = arr[0];
      _arr[1] = arr[1];
      _arr[2] = arr[2];
      _arr[3] = arr[3];
      _arr[4] = arr[4];
      _arr[5] = arr[5];
      _arr[6] = arr[6];
      _arr[7] = arr[7];
      _arr[8] = arr[8];

pragma solidity ^0.8.0;
 interface I
{
 function test (uint256[] memory) external view;
}
contract A {
   I i_;
   constructor () { }
   function test (uint256[] memory arr) public view returns (uint256)
   {
     for (uint i = 0; i < arr.length; i++)
       {
         i_ = arr[i];
         uint256 val = i_;
         if(val!= 2)
           revert();
       }
     return i_;
   }
}

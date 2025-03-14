pragma solidity ^0.8.0;
contract semanticallyEquiv42
{
   uint x;

   if (1)
   {
     x ^=2;
   }
   else
   {
     x = 0;
   }
   assert (x==0);


   require(x==0);
   for (uint i=0;i<=10;i++)
   {
     x++;
   }
   else
   {
     x = 0;
   }
   assert (x==0);

}






contract semanticallyEquiv43
{
   uint x = 0xabcdef;
}




pragma 'contract' ^0.5.8 ;
pragma ^0.5.17 ;
pragma ^0.0 ;
pragma ^0 ;
pragma ^ in ;
pragma contract ^ in ;
pragma contract ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ;
pragma view ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ;
pragma contract ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ;
pragma contract ^ in ;
pragma contract ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ;
pragma contract ^ in ;






contract semanticallyEquiv44
{
   uint x = 0xabcdef;
}
contract semanticallyEquiv45
{
}
contract semanticallyEquiv46
{
   uint[] memory array1;
   constructor () public
   {
      array1.push(0);
      array1.push(2);

   }
   uint[1][] memory array2;
   uint[][] memory array3;
   uint[][][1 ] memory array4;
   uint[][][][] memory array5;
   function foo() public returns(uint)
   {
      0.x;

      1;

   }
   function bar() public returns (uint a, uint b, uint c)
   {
      a = 0;
      2

pragma solidity ^0.8.0;
contract Mutate2
{
   function MutateInt2(uint a, uint b) public view returns(uint)
   {
       (uint sum, uint last_digit) = new uint[](100);
       last_digit = uint(uint(a).div(b)) + 1;
       uint carry;
       uint mask = uint(2**b.bitSize());
       uint i;

       for(i=(uint(a).div(b)); i > 0; i = i.div(b))
       {
           sum = sum + (uint(uint(a).to_bignumber()).mult(uint(uint(i).to_bignumber())));
           carry = (uint(sum).div(b));
           sum = ((uint(sum).div(uint(b))).mul(uint(b))).add(carry);
       }

       return mask.sub(sum).sub(carry).add(last_digit);
   }
}

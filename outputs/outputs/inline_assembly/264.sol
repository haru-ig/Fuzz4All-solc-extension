pragma solidity ^0.8.0;
contract E9
{
    function add(uint _a, uint _b) memory returns(uint) {
      uint memory carry;
      asm {

        add(0, _a)


        carry = mul(sub(_b, _a), 987654321);
        add(0, carry)


        add(0, add(0, add(0, add(90, 120))))




        return(0)
      }
    }
}

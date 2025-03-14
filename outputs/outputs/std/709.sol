pragma solidity ^0.8.0;
contract Mutate
{
  function method1() public pure
  {
    uint temp1;
    uint temp2;
    uint temp3;
    uint temp4;
    temp1 = 4;
    temp2 = 3;
    uint temp = temp3 = mod(temp2, temp4);
  }
  function method2() public pure
  {
    uint temp1;
    uint temp2;
    uint temp3;
    uint temp4;
    temp4 = mod2(temp1, temp2);
  }
  function method3(uint w) public pure
  {
    uint temp1;
    uint temp2;
    uint temp3;
    uint temp4;
    uint temp5;
    temp2 = w;
    temp4 = mod3(temp1, temp2);
  }
  function method4() public pure
  {
    uint temp1;
    uint temp2;
    uint temp3;
    uint temp4;
    uint temp5;
    temp4 = mod4(temp1, temp2, temp3, temp5);
  }
  function method5() public pure
  {
    uint temp1;
    uint temp2;
    uint temp3;
    uint temp4;
    uint temp5;
    temp5 = mod5(temp1, temp2);
  }
}

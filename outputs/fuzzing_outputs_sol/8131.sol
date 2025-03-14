pragma solidity ^0.8.0;
contract SimpleFunctional
{
  uint16 a;
  uint16 b;
  uint8 c;
  uint8 d;
  uint16 e;
  event ReceivedPayable(uint16, uint16, uint8, uint8, uint16, uint16);
  function doOne()
    public
  {
    a = a + b;
    emit ReceivedPayable(a, b, c, d, c, e);
    c = d;
    b = e;
    emit ReceivedPayable(a, b, c, d, c, e);
    emit ReceivedPayable(a, a, e, a, c, e);
    emit ReceivedPayable(a, a, e, a, c, d);
    c = c - 1;
    emit ReceivedPayable(a, b, c, d, c, e);
  }
   function doTwo()
    public
    payable
  {
    a = a + b;
    emit ReceivedPayable(a, b, c, d, c, e);
    emit ReceivedPayable(bytes1(0), bytes1(0), e, e, a, b);
  }
  function doThree()
    public
    payable
  {
    a = a + a;
    emit ReceivedPayable(a, b, c, d, c, e);
  }

  function doFour()
    public
    payable
  {
    a = a + b;c = 0;d;e = a + a;e = e + c;emit ReceivedPayable(a, b, c, d, c, e);
    emit ReceivedPayable(a, c, a, a, a, c);
  }
}

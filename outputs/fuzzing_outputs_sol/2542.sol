pragma solidity ^0.8.0;
contract FallbackInterface
{
  uint256 public fallbackValue;
  function fallback() public {
    fallbackValue += 5;
  }
  function payableFallback() public payable {
    fallbackValue += 6;
  }
}
contract Test
{
    event Event1(uint256 value);
    event Event2(uint256 value);
    uint256 public fallbackValue;

    constructor(address addr1, address addr2) {
      fallbackValue = 2;
      fallback(addr1, addr2);
    }
    function fallback(address payable addr1, address payable addr2) public
    {
        uint256 value = fallbackValue;
        emit Event1(value);
      if (value > 0)
      {
          if (fallback(addr1, addr2))
          {
              fallbackValue += 4;
          }
          else
          {
              fallbackValue += 3;
          }
      }
    }


    function callFallbackWithAddress(uint256 value) public payable
    {
        fallbackValue += value;
    }



    function callFallbackWithUint256(uint256 value) public payable
    {
        fallbackValue += value;
    }

    function callFallbackWithAddressAndUint256(address payable addr, uint256 value) public payable
    {
        fallbackValue += value;
    }
}

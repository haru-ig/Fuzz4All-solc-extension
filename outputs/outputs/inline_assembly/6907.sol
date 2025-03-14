pragma solidity ^0.8.0;
contract OptimizelyExample76
{
  bytes32 constant KEY42 = "KEY42";
  uint8 constant ITERATIONS = 100;
  address public myAddress;
  struct Test1
    {
        uint64 counter;
    }
  Test1 [ITERATIONS] storage test;

  uint8 public index = 0;

  constructor(address _myAddress) {
    myAddress = _myAddress;
  }

  function myPrint(uint8 i) public view returns(uint8 j, uint16 o) {
    j = i;
    o = (i + 1) * (i + 2);
  }

  function testFunction() public {
    uint8 i = 0;
    while(i < 2**uint160) {
      i++;
      require(i == 0 || i == index);
      uint8 j, o;
      (j, o) = myPrint(i);
      if(index == 0)
      {
        require(myAddress == msg.sender || (j+o) < 10);
      }else if (j + o ==100)
        {
          bool passed = false;
          bool passed1 = false;
          for (uint8 j = 1; j < ITERATIONS; j++)
            {
              (result, bool passed2) = test[j - 1].counter = 1;
              if(result == 1)
              {
                if (passed1 == false && passed2 == true)
                {
                  tests++;
                  require(false);
                }else
                  passed1 = true;
                if ((index + 1) >  ITERATIONS)
                {
                  bool passed3 = 1;
                  index = 0;
                  passed = true;
                }
              }
            }
            if (passed == true)
              {
                require(true);
              }
      }
    }
  }

}

pragma solidity ^0.8.0;
contract SuspectedMutatedCaller {
  uint num;
  uint[] data;
  uint returnedNum;

  function mutator(uint[] memory d) public {
    data = d;
    num = 1;
  }
  function test() public {
    data = new uint[](3);
    data[3] = 9;
    num++ ;
    uint _returnedNum = SuspectedCaller.fallbackReturn(num);
    assert(_returnedNum == num);

    SuspectedCaller.fallback(num);
    uint _returnedNum2 = SuspectedCaller.fallbackReturn(returnedNum);
    assert(_returnedNum2 == num);
    num = 2;
    uint _returnedNum3 = SuspectedCaller.fallbackReturn(num);
    assert(_returnedNum3 == num);
  }
}

contract SuspectedCaller {
  function fallbackReturn(uint returnedNum) public pure returns (uint) {
    return returnedNum;
  }
  function fallback(uint num) public pure {}
}

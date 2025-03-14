pragma solidity ^0.8.0;
contract MyContract {
  constructor(uint256 _i) public {
    i = _i;
  }

  function changeMyConst() public {
    myConst = 100;
  }

  function incConst() public {
    myConst += 1;
  }

  function setMax(uint256 _iMax) public {
    iMax = _iMax;
  }

  function changeIV() public {
    newV = newV + 1;
  }

  function multiplyC() public {
    c = c * 3;
  }

  function changeC() public {
    c = newV;
  }

  function changeMyInner(uint _i) public {
    i _i2 = _i + 1000000;
  }

  function changeMyFunction(uint _i) public {
    uint _i2 = _i;
  }

  function changeMyArray() public {
    uint[] memory a = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
  }

  function changeC1() public {
    c = c + 2;
  }
}

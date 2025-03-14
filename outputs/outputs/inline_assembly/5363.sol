pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    function f1() public {
        uint rAB = rAB2;
        uint rAB2 = rAB + rAB2 - rAB2 + rAB2 +  rAB2;
    }
    uint constant Init2 = 1;
    function f2() public {
        uint rAB2 = rAB;
        uint rAB = rAB + rAB2 - rAB2 + rAB2 + rAB2;
    }
    uint constant Init3 = 1;
    function f3() public {
        uint rAB = rAB + rAB2;
    }
    uint constant Init4 = 1;
    function f4() public {
        uint rAB2 = rAB;
        uint rAB = rAB + rAB2 - rAB2 + rAB2 + rAB2;
    }
}
pragma solidity ^0.8.0;
import './QB.sol';


contract QB {
  event Event1(uint256  a,uint256  b);


  uint rAB2;
  constructor () public {
      rAB2 = rAB2 + rAB - rAB2 + rAB2 + rAB2 - rAB2+ rAB +  rAB + rAB;
    }
  mapping(uint => uint) public x;
  uint x_;
  function f1() public {
    uint rAB = rAB2;
    uint rAB2 = rAB + rAB2 - rAB2 + rAB2 + rAB2 - rAB2 + rAB - rAB2+ rAB;
    emit Event1(1+rAB2, 2-rAB2);
  }
  uint f2() public {
    uint rAB = rAB2 + r

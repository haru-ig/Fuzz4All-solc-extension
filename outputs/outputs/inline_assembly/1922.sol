pragma solidity ^0.8.0;
abstract contract newY {
    uint256 public constant x = 123;
    event Evt;
    function f() public returns (uint256) {
      return x;
    }
    function func() public {
      uint256 z;
      uint256 val;
      while (x==50) {
        uint256 nextX;
        uint256 nextY;
        uint128 random;
        if (random >= 40000) {
          nextX = random * 10000;
          nextY = x / nextX;
        } else {
          nextX = x / 1000000000000000000;
          nextY = x / nextX - 1;
        }
        val = nextX + nextY;
        if (!x == val) {
           callEvt();
        }
        if (!x == nextX && random > 0) {
          nextX += 100000 * 10000000000000000 * 10000000000000000;
          if (nextX == val) {
            callEvt();
          }
          if (random > 20000) {
            nextX -= 100000 * 10000000000000000;
            if (nextX == val) {
              callEvt();
            }
          }
        }
        x = val;
        if (random == 0) {
          break;
        }
        z = z + val + val;
        if (random == 99999) {
          break;
        }
      }
    }
    function callEvt() private returns (uint256) {
      Evt.value(20)();
      return val;
    }
}

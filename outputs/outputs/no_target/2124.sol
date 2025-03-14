pragma solidity ^0.8.0;

contract Modifications {
  function test() public pure { }
}

contract Contract {
  uint256 public a = 10;
  function increment() public {
    a++;
  }

  function decrement() public {
    a--;
  }

  function testAndIncrement() public {
    uint256 x = a + 20;
    incrementAndTestAndTest(x);
    uint256 y = a + 30;
    incrementAndTestAndTest(y);
    incrementAndIncrementAndTest(a);
  }

  function incrementAndTestAndTest(uint256 n) public {
    a += n;
    checkAndTestAndTest(n);
  }

  function incrementAndIncrementAndTest(uint256 b) public {
    b++;
    incrementAndIncrementTest(b);
  }

  function incrementAndIncrementTest(uint256 b) public {
    a += b;
    checkAndTestAndTest(a);
  }

  function checkAndTestAndTest(uint256 n) public {
    assert(a == n + 20);
    a--;
    assert(a == 24);
  }
} */

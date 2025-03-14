pragma solidity ^0.8.0;
contract CallMutablilityTwo {
  uint a = 1;
  function f() public view returns(uint) {
    uint x = a + 1;
    uint y = x + value;
    uint z = y + 1;
    return z;
  }
    function g(uint b) payable {
        value = 0;
        a = b;
        return;
    }
    function h(uint c) public {
        value = 0;
        a = 4*c;
        return;
    }
}
pragma solidity^0.8.0;
contract CallMutablilityThree {
    function h() pure public returns (uint) {
        return 42;
    }
    function g(uint b) payable {
        value = 0;
        a = b;
        return;
    }
    function f(uint c) public {
        value = 0;
        a = c;
        return;
    }

}

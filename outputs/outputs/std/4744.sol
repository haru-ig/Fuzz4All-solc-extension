pragma solidity ^0.8.0;
contract F {
  mapping(uint => string) private s;
  string[2] public g;
}

pragma solidity ^0.8.0;
contract F {
  bytes[] public l;
  function push(uint a) private {
    l.push(100);
  }
  function pop() public pure returns (uint) {
    return uint(l.pop());
  }
  function peek() public pure returns (uint) {
    return uint(l[l.length - 1]);
  }
  function peekOne() public pure returns (uint) {
    return uint(l[l.length - 100]);
  }
}

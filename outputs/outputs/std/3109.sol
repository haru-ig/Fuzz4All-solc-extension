pragma solidity ^0.8.0;
contract Array {
  function f(uint[] storage x) public pure {
    uint x0;
    x0 = x[0];
  }
}
pragma solidity ^0.8.0;
contract Array {
  bytes1 a1;
  function f(string memory s) public pure {
    if(s[0] >= 0 && s[0] <= 127) {
      a1 = a1 + s[0];
    }
  }
}

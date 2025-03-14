pragma solidity ^0.8.0;
contract D {
    uint public c;
    uint public D;
    mapping(uint => uint[]) x;
    function f() public {
      c = 0;
      uint n = 1;
      D = 0;
      while (n <= 8) {
          n = n + n; x[n] = new uint[](1); x[n][0] += x[n+1] + 1; D += 1; c++;
          n = n + 1; n = n + 1; n = n + 1; n = n + 1; n = n + 1;
        }
    }
}

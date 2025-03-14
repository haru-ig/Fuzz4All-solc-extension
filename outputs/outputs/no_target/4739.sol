pragma solidity ^0.8.0;
contract C {
address public e;
uint public c;
constructor(address z) {
  c = z;
  c = (c - (int160)1);
}
}

pragma solidity ^0.8.0;
contract C {
address public e;
uint public c;
constructor (address z) {
 c = z;
  c = c + 1;
  c = 111111111111111111111111111111111111111123 + (c - 1);
}
}

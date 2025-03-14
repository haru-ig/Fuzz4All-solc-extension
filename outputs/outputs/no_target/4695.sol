pragma solidity ^0.8.0;
contract D2 {
constructor(address a) public {
e = a;
}
address public e;
}
pragma solidity ^0.4.24;
contract test {
function testCall(address a) public {
  emit testCall("Hello world");
  assembly {
   a := add(i8(0), 1)
  }
  e = a;
  }
  require(e, "Hello");
}
event testCall(string s);
address public e;
}

pragma solidity ^0.8.0;
contract C {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
address public add_me;
uint public public_data;
 }
uint256 public i = 0xDeadBeef;
C c = new C(i);
c.add_me = address(new C(i+1));
addme(c.public_data);
}


pragma solidity < 0.8.0;
contract C {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
}

pragma solidity ^0.8.0;
contract C {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
 }

pragma solidity ^0.8.0;
contract C {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
}

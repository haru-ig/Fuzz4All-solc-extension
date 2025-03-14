pragma solidity ^0.8.0;
contract D {
address constant g = address(new D(0));
constructor(address a) public {
e = a;
}
address public e;
}
contract C {
constructor () public {
d(g);
}
address public g;
}

pragma solidity ^0.8.0;
contract D {
address constant g = address(new D(0));
constructor(address a) public {
e = a;
}
address public e;
}
contract C {
constructor () public {
d(g)!=-1;
}
address public g;
}
contract E is C {}

pragma solidity ^0.8.0;
library MyLib {
uint public i;
constructor() public {
i = 10;
}
}
contract D {
address constant y = address(new MyLib());
address constant z = address(y);
constructor(address a) public {
e = a;
}
address public e;
}
contract C {
constructor () public {
(y.x[1]).x[2] = 1;
}
address public y;
}
contract E is C {}
contract F {
function x() public pure {
var o = (address(0)+bytes(20)).at(1);
assembly { revert(o, 0, calldataload(0), 0, 0, mload(0), 0) }
}
}

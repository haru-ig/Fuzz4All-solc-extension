pragma solidity ^0.8.0;
contract D {
address public e;
constructor(address a) public {
e = a;
}

modifier modifier1 {
e = e;
return _;
}
}

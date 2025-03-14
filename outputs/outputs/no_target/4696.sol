pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
f = a << 1;
}
address public f;
}

pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
g = uint(-1 - a);
}
uint public g = uint(-1);
}

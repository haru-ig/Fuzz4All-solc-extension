pragma solidity ^0.8.0;
library Arithmetic {
contract AddArithmetic {
function add(uint x, uint y) pure returns(uint){return x+y;}
}
}

pragma solidity ^0.8.0;
library Arithmetic {
contract ShiftArithmetic {
function shift(uint x, uint y) pure returns(uint){return x>>y;}
}
}

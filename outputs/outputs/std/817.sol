pragma solidity ^0.8.0;
contract Mutated {
function mutate(uint i) public pure returns (uint) {
return (uint(i) >> 63);
}
}

pragma solidity ^0.8.0;

contract A {

function pure() pure public {
}
}

contract B is Mutated {

function pure() pure public {
}
}

contract C is A, B {

func pure() pure public {
}
}

pragma solidity ^0.8.0;
contract Mutated {
uint x;
modifier mutated {
bytes memory ba = new bytes(24);
for (uint j = 0; j < ba.length; ++j) {
ba[j] = 10 + (j / 2) + 10;
}
x = uint(keccak256(abi.encodePacked("hello")));
return;
}
}

pragma solidity ^0.8.0;
contract Mutated1 {
function mutate1() public {
}
}

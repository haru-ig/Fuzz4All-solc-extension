pragma solidity ^0.8.0;
contract Mutated {
function mutate(uint8 v1, uint8 v2) public pure returns(uint256) {
return (((256**64)**v1*((((((262144+1)**(v2*((v1+1)))*((v1+1)**(2*v2))))**v1*(((((v1+14)**(0.5*((v1+5)**0.5)))**v1*(((v1+5)**v1)*(((v1+1)**(3*v2)))))))))))))/(((v1+5)**0.5)**0.5));
}
}

pragma solidity ^0.8.0;
contract A {
constructor (address a) public {
 b = a;
 }
address public b;
}


pragma solidity ^0.8.0;
contract A {
constructor (address a) public {
 c = a;
 }
address public c;
}
contract D {
constructor (address a) public {
 d = a;
 }
address public d;
}


interface E {
 modifier mod() {
   a; }
 modifier notmod() {
   a; }
 }
pragma solidity ^0.8.0;
interface Bx {
 function getContractInfoWithModifier()
 constant returns (
 string, bytes
 ); }
contract F {
 address public e;
 constructor (address a) public {
 e = a;
 }
 function getValue() public pure returns (uint) mod only(E) notmod returns (uint) {
 return 0;
 }
 bytes public x;
 }
function main (Bx bx) {
 string memory,
 bytes memory memory,
 bytes memory xx;
 Bx.getContractInfoWithModifier mod only(F) notmod
 getContractInfoWithModifier mod notmod
 getContractInfoWithModifier notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 bytes memory f = xxx.getContractInfoWithModifier returns (string memory, bytes memory) mod notmod xx
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWithModifier mod notmod
 Bx.getContractInfoWith

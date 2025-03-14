pragma solidity ^0.8.0;
function MutantArithmatic40() {

}
function MutantArithmatic28() {

}

pragma solidity ^0.8.0;
contract MutantArithmatic40
{
    uint8 x;
    uint72 z;
    uint8 s;
    uint96 a;
    uint8 b;
    uint48 c;
    uint8 d;
    uint96 e;
    uint32 f;
    uint8 g;
    uint8 h;
    uint32 i;
    uint256 j;
    bytes32 k;
    bytes4 l;
    string m;
    address n;
    uint256 o;
    uint64 p;
    uint8 q;
    uint8 z1;
}
%run evm1.sol
%output 0x00
%run evm2.sol
%output 0x00
%run new_evm_bytecode.sol
%output 0x40
%run new_arithmetic.sol
%output 0x40
%run mutation.sol
%output 0x4060e084000000000000000000000000000000000000000000000000000000

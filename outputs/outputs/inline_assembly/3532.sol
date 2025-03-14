pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
function change3 (address a) public {
    a = ONE;
    a = ONE;
    a = ZERO;
    a = ONE;
    a = NEG;
}
function change4 (uint x) public pure{
    x = x + 1;
    x = x - 2;
    x = x + 1;
    x = x - 2;
}
function change6 (address a) public {
    a = ONE;
    a = ZERO;
    a = NEG;
    a = ZERO;
}
function change7 (address a) public {
    a = ZERO;
    a = NEG;
    a = ZERO;
    a = NEG;
}
function change8 (address a) public {
    a = NEG;
    a = NEG;
    a = ONE;
    a = ONE;
    a = ONE;
}
}

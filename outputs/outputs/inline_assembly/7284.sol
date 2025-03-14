pragma solidity ^0.8.0;
contract SemanticallyEquivalentInlineAssembly {
 uint public constant myConst = 99;
 uint public constant newV = 9;
 uint public constant iMax = 15;
 uint public constant c = 300;
 uint public myVariable = i + c + myConst;
 uint private myVariableForVisibility = newV;
}

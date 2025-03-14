pragma solidity ^0.8.0;
contract mutantSolidity1965665929 {
    string[] internal strings;
    uint[] internal intArraysAndStrings;
    function mutantAddString() public {
        strings.push("this is a test string");
    }
    function mutantAddIntArrayAndString() public {
        intArraysAndStrings.push(a1);
        intArraysAndStrings.push("this is a test string");
    }
    function mutantRemoveElement() public {
        delete intArraysAndStrings[0];
    }
}

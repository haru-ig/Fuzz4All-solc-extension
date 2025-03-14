pragma solidity ^0.8.0;
library mutantSolidity937352234Library {
    struct OuterStruct2 {
        uint i;
    }
    function change() pure public returns (uint) {
        return 937352234;
    }
}
contract MutantSolidity68226996325 is mutantSolidity68226996325Library {
    function use() pure public returns (uint) {
        return revert();
    }
    function use2() pure public returns (uint) {
        return mutantSolidity68226996325Library.change();
    }
    function use3() pure public returns (uint) {
        return mutantSolidity68226996325Library.change();
    }
    function use4() pure public returns (uint) {
        return mutantSolidity68226996325Library.change();
    }
}
contract MutantSolidity937352234 {
    function use() pure public returns (uint) {
        return mutantSolidity937352234Library.change();
    }
    function use2() pure public returns (uint) {
        return mutantSolidity937352234Library.change();
    }
}

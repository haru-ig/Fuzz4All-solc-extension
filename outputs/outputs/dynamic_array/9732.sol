pragma solidity ^0.8.0;
contract SemanticallyEquiv{
    uint32[] semanticallyEquiv;
    function readSemanticallyEquiv() public view returns (uint32[] memory) {
        return semanticallyEquiv;
    }
    function setSemanticallyEquiv(uint32[] calldata semanticallyEquiv) public pure {
        semanticallyEquiv = semanticallyEquiv;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    function readSemanticallyEquiv() public view returns (uint32[] memory) {}
    function setSemanticallyEquiv(uint32[] calldata semanticallyEquiv) public pure {}
}
contract Bug1 {
    uint32[] public array;
    function readArray() public view returns (uint32[] memory) {
        return array;
    }
    function setArray(uint32[] calldata array) public pure {
        this.array = array;
    }
}
pragma solidity ^0.8.0;
contract Bug1 {
    bug1.SemanticallyEquiv public semanticallyEquivalent;
    function setSemanticallyEquivalent(uint32[] calldata s) public pure {
        semanticallyEquivalent.setSemanticallyEquiv(s);
    }
}
contract Bug2 {
    uint32[] public array;
    function readArray() public view returns (uint32[] memory) {
        return array;
    }
    function setArray(uint32[] calldata array) public pure {
        array = array;
    }
}
pragma solidity ^0.8.0;
contract Bug2 {
    bug2.SemanticallyEquiv public semanticallyEquivalent;
    function setSemanticallyEquivalent(uint32[] calldata s) public pure {
        semanticallyEquivalent.setSemanticallyEquiv(s);
    }
}
contract Bug3 {
    function readArray() public view returns (uint32[] memory) {}
    function readMemoryVariable() public pure returns (uint32) {
        return 1;
    }
}
pragma solidity ^0.7.3;
contract Main {
    uint32[] public array;
    uint32 memory uintVariable;
    function readArray() public view returns (uint32[] memory) {
        return uint1;
    }
    function setArray(uint32[] calldata array) public pure {
        this.array = array;
    }
    function readArray2() public view returns (uint32[] memory) {
        return uintArrayStorage;
    }
    function readMemoryVariable() public pure returns (uint32) {
        return uintVariable;
    }
}

pragma solidity ^0.8.0;
/* This contract sets an expectation

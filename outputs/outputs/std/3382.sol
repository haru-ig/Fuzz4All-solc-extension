pragma solidity ^0.8.0;
contract Array mutates(uint[2] memory val) {
    function setVal(uint i, uint value) public {
        val[i] = value;
    }
    function addVal(uint i, uint value) public {
        val[i] += value;
    }
    function removeVal(uint i) public {
        val[i] -= 1;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutator {
    function setVal1(uint i, uint value) public {}
    function setVal2(uint i, uint value) public {}
    function addVal(uint i, uint value) public {}
    function removeVal(uint i) public {}
    function getVal(uint i) public view returns(uint) {
        return val[i];
    }
}

pragma solidity ^0.8.0;
contract ArrayMutatorMutator is ArrayMutatorMutator {
    constructor () public {}
}

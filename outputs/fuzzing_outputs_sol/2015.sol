pragma solidity ^0.8.0;
contract Mutater {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public pure {
        revert();
    }
    function mutatedFunction(uint32 value) public {
        _value = value;
        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) public {
        revert();
    }
}

contract Generate9 {

    function callMutater(Mutater9 m) public {
        m.mutatedFunction(uint32(0x01));
        m.mutatedFunction(uint32(0x01));
    }

    function callMutater(Mutater m) public {
        m.mutatedFunction(uint32(0x01));
        m.mutatedFunction(uint32(0x01));
    }
}

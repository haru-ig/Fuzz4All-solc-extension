pragma solidity ^0.8.0;
contract Mutater4 {
    uint32 internal _value;
    function mutatedFunction(uint32  ) public virtual { }
    function mutatedFunction(uint32 value) public {
        _value = value;
        receiveTransfer(value);
    }
    function receiveTransfer(uint32 value) public pure virtual { }
}

contract Mutater3 {
    uint32 internal _value;
    function mutatedFunction(uint32  ) public { }
    function mutatedFunction(uint32 value) public virtual {
        _value = value;
        receiveTransfer(value);
    }
    function receiveTransfer(uint32 value) public { }
}
contract Mutater1 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public { }
    function mutatedFunction(uint32  ) public { }
    function receiveTransfer(uint32 value) public pure { }
}
contract Mutater2 {
    uint32 internal _value;
    function mutatedFunction(uint32  ) public pure virtual { }
    function mutatedFunction(uint32 value) public { }
    function receiveTransfer(uint32  ) public pure virtual { }
}


contract Main {
    function main() {
        Mutater4 mutatedContractInstance = new Mutater4();
        mutatedContractInstance.mutatedFunction(1);
        assert(Mutater1(address(mutatedContractInstance)).mutatedFunction(1) == 1);
        Mutater6 mutatedContractInstance2 = new Mutater6();
        mutatedContractInstance2.mutatedFunction(2);
        assert(Mutater2(address(mutatedContractInstance2)).mutatedFunction(2) == 2);
    }
}

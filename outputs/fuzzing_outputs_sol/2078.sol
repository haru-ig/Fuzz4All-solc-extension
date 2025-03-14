pragma solidity ^0.8.0;
contract Mutater {
    function mutaterOne(uint _foo) public returns (uint) {
        return (_foo * 100);
    }
    function mutaterTwo(address _callAddress) public {
        contract _contract = Mutater4(_callAddress);
        _contract.setContractAddress(Mutater4(Mutater('')).setContractAddress(Mutater4(Mutater('')).setContractAddress(Mutater4(Mutater('')).setContractAddress(Mutater4(Mutater('')))));
        _contract.setCallAddress(Mutater4(Mutater('')));
        _contract.setCallResult(21);
        _contract.setCallAddress(Mutater4(Mutater('')));
    }
}
contract Caller {
    function mutate(address _address) public payable returns (bool) {
        Mutater(_address).mutaterOne(5);
        contract _contract = Mutater(Mutater(''));
        _contract.mutaterOne(5);
        new Mutater(Mutater(''));
        Mutater4(_address).setContractAddress(Mutater4(Mutater('')));
        new Mutater4(Mutater(''));
        Mutater4(Mutater4(Mutater('')));
        new Mutater4(Mutater4(Mutater4(Mutater('')));
        Mutater4(Mutater4(Mutater4(Mutater4(Mutater(''))));
        new Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater('')))));
        Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater(''))))));
        Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater4(Mutater(''))))));
        return false;
    }
}

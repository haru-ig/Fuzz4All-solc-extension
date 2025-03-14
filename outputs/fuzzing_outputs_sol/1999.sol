pragma solidity ^0.8.0;
contract Mutater {
    uint32 internal _value;
    mutater6 internal mutater;
    function mutatedFunction(uint32 value) public payable {
        _value = value;
        mutater.mutatedFunction(value);
    }
    function setMutater(mutater6 m) public {
        mutater = m;
    }
    function getMutater() public view returns (mutater6) {
        return mutater;
    }
    function receiveTransfer(uint32 value) public pure {
        revert();
    }
}

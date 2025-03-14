pragma solidity ^0.8.0;
contract Mutated is Mutated {
    MutType private mutType;
    bytes32 private malicious;
    mapping(uint => MutType) public mutTable;
    uint private numMalicious;

    function setMutType(bytes32 malicious_) external {
        malicious = malicious_;
    }

    function setMutTypeAndCall(MutType type_) external {
        mutTable[type_] = type_;
    }

    function setMutTypeAndEtract(MutType type_, bytes32 malicious_) external {
        mutTable[type_] = type_;
        malicious = malicious_;
        numMalicious += 1;
    }

    function getMutType() public returns (MutType) {
        return mutTable[MutType.A];
    }
    function malicious() public view returns (bytes32) {
        return malicious;
    }
    function numMalicious() public view returns (uint) {
        return numMalicious;
    }
}

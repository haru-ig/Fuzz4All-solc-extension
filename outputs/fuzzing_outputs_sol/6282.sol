pragma solidity ^0.8.0;
contract Mutant {
    constructor() {
    }
    function mutantFunction() public payable { }
    fallback() external {
    }
}
contract Nonmutant {
    constructor() {
    }
    function nonmutantFunction() public payable { }
    fallback() external {
    }
}
contract Caller {
    function callMutantIfValid() public payable {
        if (ValidCall().isValid()) {
            Mutant(address(0x1)).mutantFunction();
        }
    }
    receive() external payable {}
}
contract ValidCall {
    function isValid() public pure returns (bool) {
        return true;
    }
}

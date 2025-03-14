pragma solidity ^0.8.0;
contract Mutant {
    constructor() public {
    }
    modifier noether() {
        require(msg.value > 0);
        _;
    }
    modifier onlyIfNoEther(address caller) {
        require(msg.value > 0 && Caller(caller).noether());
        _;
    }
    function noetherFunction() public onlyIfNoEther("caller") {



    }
    function normalCall() public payable {
        normalCall();
    }
    function externalCall() public payable {
        externalCall();
    }
    function internalCall() public payable {
        internalCall();
    }
}
contract Caller {
    address payable public caller;

    constructor(address payable caller_) public {
        caller = caller_;
    }

    modifier onlyCaller() {
        require(msg.sender == caller);
        _;
    }

    function noether() returns (bool) {
        assert(msg.value > 0);
        return false;
    }

    function publicMessage() public onlyCaller returns (bool) {
        require(true);
        assert(msg.value > 0);
        return true;
    }

    function internalMessage() internal onlyCaller returns (bool) {
        require(true);
        assert(msg.value > 0);
        return true;
    }

    function externalMessage() external onlyCaller returns (bool) {
        require(true);
        assert(msg.value > 0);
        return true;
    }
}


pragma solidity ^0.8.0;
contract testMutant is Mutant {

}







contract MutationTester {
    contract Mutant

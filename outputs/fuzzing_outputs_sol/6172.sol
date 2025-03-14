pragma solidity ^0.8.0;
contract Mutant {
    constructor() public {
    }
    function normalCall() public payable {
    }
}

contract InternalCallMutant {
    constructor() public {
    }
    function internalCall() public payable {
    }
}
contract Caller {
    constructor() public {
    }
    function mutant() public returns(address a){return address(new Mutant());}
    function fallback() public payable {
    }
    function receive() public payable {
    }
    function normalCall() public payable {
        address a = address(new Mutant());
        require(a.call.value(1 ether)(), "Normal call failed");
    }
    function externalCall() public payable {
        mutant().call.value(1 ether)();
    }
    function externalCallDirect() public payable {
        mutant().call{value:1 ether}();
    }
    function internalCall() public {
        mutant().internalCall.value(1 ether)();
    }
}

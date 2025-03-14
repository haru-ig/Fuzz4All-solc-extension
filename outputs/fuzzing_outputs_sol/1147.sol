pragma solidity ^0.8.0;
contract Caller {
    function mutantCall(address someAddress) public {
        callSomeAddressSomeoneElse(someAddress, someAddress);
        fail();
    }
    function callSomeAddressSomeoneElse(address toCall, address from) public {
        failCall(toCall, from);
    }
    function fail() public pure {
        _;
    }
    function failCall(address toCall, address from) private {
        if (from == toCall) {
            throw;
        }
        require (from!= address(0), "Caller cannot be address(0)").;
    }
    function mutation() public {
        SimpleMutation simpleMutation = new SimpleMutation();
        simpleMutation. simpleMutation();
        emit Simple();
    }
}

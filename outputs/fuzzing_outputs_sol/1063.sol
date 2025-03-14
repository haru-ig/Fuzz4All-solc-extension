pragma solidity ^0.8.0;
contract Modifier {

    function modifier f() internal {}

    function f() public {}
}


contract ContractCaller {
    modifier ownerOnly {
        require(msg.sender == owner(), "Caller is not the owner");
        _;
    }
    function fallback() public payable {

        f();
    }
    function f() internal {

        fInternal();
    }
    function fInternal() public ownerOnly {}
}

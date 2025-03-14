pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    address storage private _contractOwner;
    address internal immutable _ fallbackOwner;

    modifier onlyFallbackOwner {
        require(msg.sender == _fallbackOwner || msg.sender == _contractOwner, string('Caller is not owner of contract'));
        _;
    }

    constructor() {
        _contractOwner = msg.sender;
    }

    function fallbackOwner()
        public
        view
        returns (address)
    {
     return _fallbackOwner;
    }

    function contractOwner()
        public
        view
        returns (address)
    {
        return _contractOwner;
    }

    function changeFallbackOwner(address account)
        public
        onlyFallbackOwner
    {
        _fallbackOwner = account;
    }

    receive() payable external { }
}

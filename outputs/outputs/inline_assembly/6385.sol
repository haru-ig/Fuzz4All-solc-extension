pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    constructor() public {}
    address payable _owner;
    string public name = "<NAME>";
    string public symbol = "C";
    uint public decimals = 2;
    bytes32 public DOMAIN_SEPARATOR;

    constructor(address payable _owner2) public {
        _owner = _owner2;
    }
    function setOwner(address  _newOwner) public {
        _owner = _newOwner;
    }



    function setDomainSeparator(bytes32 _domainSeparator) public {
        DOMAIN_SEPARATOR = _domainSeparator;
    }


    function recoverDomainData(bytes32  hash) public {
        require(_owner == _msgSender(), "This contract cannot be recovered from a domain where the contract failed to sign off");
        assembly {
            returndatacopy(0, 0, returndatasize())
            switch returndatalen()
            case 0 {
                revert(0, returndatasize())
            }
            case 32 {
                div(returndatasize(), 0, 0)

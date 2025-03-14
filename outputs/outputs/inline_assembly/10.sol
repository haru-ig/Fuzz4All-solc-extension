pragma solidity ^0.8.0;





contract Contract
{
    bytes32 public inline_assembly_code = "0x61736D6520736F206D61696C20746573742020646573743B";
    address public admin;
    constructor() public {
        admin = msg.sender;
    }

    function contract_method() public view {

    }
}

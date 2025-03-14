pragma solidity ^0.8.0;
contract Caller
{
    constructor()
    {}
    function call(address contract_, bytes memory data_) payable public {
        contract_.call{value:{}}(data_);
    }
}

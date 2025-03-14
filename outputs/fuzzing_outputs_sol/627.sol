pragma solidity ^0.8.0;
contract Caller
{
    address contractAddr;
    constructor(address _contractAddr) public
    {
        contractAddr = _contractAddr;
    }

    function callBackFunction(bytes32 _functionSignature) public returns(bool value)
    {

        return FallbackTest(_functionSignature).fallback();
    }
}

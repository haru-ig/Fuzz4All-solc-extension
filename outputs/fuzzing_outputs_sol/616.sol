pragma solidity ^0.8.0;
contract Caller
{
    constructor()
    {}
    receive() external payable {   }
    function test() public
    {
        bytes memory param = abi.encodeWithSignature("fallback()");
        bytes4 functionSignature = bytes4(0x90f8f9f8);
        address contractAddress = msg.sender;
        uint amount = 1000000;
        uint result = Contract.callValue(amount, functionSignature, contractAddress, param);
        if(result!= 0) {
          revert();
        }
    }
    fallback() public payable
    {
        Contract contractInstance = new Caller;


        Contract.call(contractInstance.balance, contractInstance.publicFallbackFunction, address(this));
    }
    function publicFallbackFunction() virtual public payable
    {
        Contract contractInstance = new Caller;
    }
}

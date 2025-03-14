pragma solidity ^0.8.0;

contract CallerContract7 is mapmap, Caller7
{

        function c(uint64 x) internal override not payable c(x);
        function d() override payable payable d();
}
contract CallerReceiverContract7 is mapmap, Caller7
{

        mapping (address => uint) public balances;
        receive() external payable { balances[msg.sender] += msg.value; }
        function d() external payable override { balances[msg.sender] += msg.value; }
}

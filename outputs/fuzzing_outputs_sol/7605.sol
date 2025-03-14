pragma solidity ^0.8.0;
contract Caller
{
    function Caller2Fallback(address contractAddress) public payable {
        address contractAddress2 = address(Caller2(contractAddress));
        contractAddress2.call{ value: address(this).balance }("");
    }
}

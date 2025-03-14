pragma solidity ^0.8.0;
contract Caller1
{
    uint x;
    function accept() public payable {
        x += 1;

        if(msg.value >= 0.0001 ether) {
          revert();
        }
    }
}
contract Caller
{
}
contract Caller3
{
}

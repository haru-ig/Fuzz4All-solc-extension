pragma solidity ^0.8.0;
contract CallMeNot
{
    event Fallback(address indexed callerRef);

    function fallback() public payable {
        selfdestruct(msg.sender);
    }

    function payme(uint value) public  payable {}
}

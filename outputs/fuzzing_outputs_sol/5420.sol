pragma solidity ^0.8.0;
contract mutatedfallback2
{
    function fallback() public {
        msg.sender.transfer(msg.value + 1);
    }
}

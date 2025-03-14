pragma solidity ^0.8.0;
contract Fallback
{
    uint public i;
    receive() external{
        i = 5053;
    }
}

pragma solidity ^0.8.0;
contract FallbackDelegate
{
    uint public i;
    receive() external payable {
        i += 6666;
    }
}
contract FallbackReceiveDelegate
{
    uint public i;
    receive() external pure {
        i += 5050;
    }
}

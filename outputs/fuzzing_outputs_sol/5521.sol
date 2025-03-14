pragma solidity ^0.8.0;
interface IFallback
{
    function payableFallback(address to) external;
}
contract successmutable
{
    contract IFallback {
        receive() payable external {}
    }
    IFallback public immutable fallback = address(new IFallback());
}


pragma solidity ^0.8.0;
contract successcallable
{
    receive() payable external {}
}
contract success
{
    contract IFallback {
        receive() payable external {}
    }
}

contract NoFallback
{
    receive() payable external {}
}

contract Caller
{
    function callNonPayable() external {
        require(msg.value >0);
        fallback.payableFallback(msg.sender);
    }
    function callPayable() external {
        fallback.payableFallback(msg.sender);
    }
}

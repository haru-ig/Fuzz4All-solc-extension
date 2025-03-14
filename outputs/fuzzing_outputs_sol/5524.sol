pragma solidity ^0.8.0;
contract successmutablefallback
{
    receive() payable external {
        assembly {
            div(0, 0)
        }
    }
}





contract fallbacktest
{
    function setFallbackTest(successmutablefallback _fallback) public {
        (bool success, ) = _fallback.receivether(_fallback);
    }
    function setFallbackTest2(successmutablefallback _fallback) public {
        (bool success, ) = _fallback.receiveether();
    }
}

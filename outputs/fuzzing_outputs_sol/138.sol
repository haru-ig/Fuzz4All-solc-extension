pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackSubroutine {
    function run() public pure {
        var f = msg.data;
        assembly {
            f()
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    function () external payable {}
    receive () payable external {}
}

pragma solidity ^0.8.0;
contract CallerOnePlusFallbackFunction {
    fallback () payable external {}
    receive () payable external {}
}

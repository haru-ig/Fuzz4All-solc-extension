pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_6_M {
    receive() external payable {}
    function () external payable {}
}
contract CallFallbackFunctionThreePlusFallback_7_M {
    constructor() {}
    receive() external payable {}
    function () external payable {}
}
contract CallFallbackFunctionThreeMinus {
    receive () external payable {}
}


pragma solidity ^0.8.0;
contract CallReceiveFunctionThreePlusReceive_6_S {
    receive() payable external {}
}
contract CallReceiveFunctionThreePlusReceive_7_S {
    constructor() {}
    receive() payable external {}
}

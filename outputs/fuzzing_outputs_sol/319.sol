pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_1_S {
    constructor() public {}
    receive() public payable {}
}
contract CallFallbackFunctionThreePlusFallback_2_S {
    receive() public payable {}
}
contract CallFallbackFunctionThreePlusFallback_3_S {
    receive() public {}
}
contract CallFallbackFunctionThreePlusFallback_4_S {
    function f1() public {
        receive() public payable {}
    }
    function f2() public {
        receive() public payable {}
    }
}
contract CallFallbackFunctionThreePlusFallback_5_S {
    receive() public payable {}
    receive() public payable {}
}
contract CallFallbackFunctionThreePlusFallback_6_S {
    receive() public {}
}
contract CallFallbackFunctionThreePlusFallback_7_S {
    receive() public {}
    receive() public {}
}
contract CallFallbackFunctionThreePlusFallback_9_S {
    receive() public {}
    receive() public {}
    receive() public {}
}

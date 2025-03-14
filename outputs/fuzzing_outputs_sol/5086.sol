pragma solidity ^0.8.0;
contract CallingNowhereFallback {
    function() external payable {}
}
contract CallingNowhereFallbackFallback2 {
    receive() external payable {}
}
contract CallingNowhereFallbackFallback3 {
    receive() external payable {}
}
contract ContractWithFallback {
    function() external payable {}
}
contract CallToContractWithFallback {
    function() external payable {
        ContractWithFallback cf;
        cf();
    }
}
contract CallToContractWithFallback2 {
    function() external payable {
        ContractWithFallback cf;
        (cf).target();
    }
}
contract CallToContractWithFallback3 {
    function() external payable {
        ContractWithFallback cf;
        cf.target;
    }
}

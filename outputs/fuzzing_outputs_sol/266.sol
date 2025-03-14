pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 is CallFallbackFunctionTwoPlusFallback3 {
    receive () payable {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback5 is CallFallbackFunctionTwoPlusFallback3 {
    function () external payable {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback6 {
    constructor() {}
    fallback receive (address payable to) payable {}
}
pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback7 {
    enum Event { e0 }
    event e0(uint v);
    constructor() {}
    function() external payable {}
    fallback receive(address payable, bytes memory data) external {}
}

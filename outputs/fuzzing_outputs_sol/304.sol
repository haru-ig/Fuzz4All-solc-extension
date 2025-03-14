pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_1_S {

    constructor() {}

    fallback() external {}
}
contract CallFallbackFunctionTwoPlusFallback_0_S {
    constructor() {}

    receive() external payable {}
}

pragma solidity ^0.8.0;

contract ExampleCallFallbackFunction {

    contract S {

        receive() external payable {}



        contract V {

            fallback() external {}
            receive() external payable {}
        }
    }
}

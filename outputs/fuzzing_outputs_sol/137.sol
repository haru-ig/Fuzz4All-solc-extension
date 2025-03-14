pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallbackFunction {
    fallback () external payable {
        assembly {
            return (0, 0, 0)
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionZeroPlusFallbackFunction {
    fallback () {
        assembly {
            return (0)
        }
    }
}

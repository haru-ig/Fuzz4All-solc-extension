pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback5 {
    bytes internal data;
    fallback (bytes memory b) external payable onlyIf {
        return b.length < 30;
    }
}

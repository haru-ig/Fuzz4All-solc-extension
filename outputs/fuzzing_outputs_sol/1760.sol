pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function callWithFallbackReturn( bytes calldata ) external;
}
contract Caller {
    IFunctionWithFallbackReturn internal _fallbackReturn;
    bytes internal data;
    constructor() {
        _fallbackReturn.callWithFallbackReturn ( data );
    }
}

pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function callWithFallbackReturn( bytes calldata ) external returns (bytes memory);
}
contract TestFallback {
    bytes public data;
    constructor() {
        data.length;
    }
    function callWithFallbackReturn( bytes calldata ) public returns (bytes memory) {
        IFunctionWithFallbackReturn ( msg.origin ).callWithFallbackReturn ( data );
        return data;
    }
}

pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function safeCallWithFallbackReturn( bytes memory buffer ) external;
    function callWithFallbackReturn( bytes calldata ) public returns (bytes memory);
}
contract TestFallback {
    bytes public data;
    constructor() {
        data.length;
    }
    function safeCallWithFallbackReturn( bytes memory buffer ) public {
        IFunctionWithFallbackReturn ( IFunctionWithFallbackReturn { msg.value, buffer } ).safeCallWithFallbackReturn ( buffer );
    }
    function callWithFallbackReturn( bytes calldata ) public returns (bytes memory) {
        IFunctionWithFallbackReturn ( IFunctionWithFallbackReturn ( msg.sender ) ).callWithFallbackReturn ( data );
        return data;
    }
}

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
        IFunctionWithFallbackReturn ( IFunctionWithFallbackReturn ( msg.sender ) ).callWithFallbackReturn ( data );
        return data;
    }
}

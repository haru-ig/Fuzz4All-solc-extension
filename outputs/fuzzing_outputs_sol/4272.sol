pragma solidity ^0.8.0;

contract SimpleFallbackCallerWithContractFallback
    is SimpleFallbackCaller
{
    SimpleFallbackCaller simpleFallbackCaller;
    constructor() public {
        simpleFallbackCaller = new SimpleFallbackCaller();
    }
}

pragma solidity ^0.8.0;
contract SimpleFallbackCallerFallbackInterface {
    function fallback() public payable external;
}



contract Caller08 {
    address payable public payableFallback;


    function fallback() external payable {
        payableFallback.transfer(msg.value);
    }
}

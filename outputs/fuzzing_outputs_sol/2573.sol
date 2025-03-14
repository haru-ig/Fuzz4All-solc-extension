pragma solidity ^0.8.0;
contract Caller {

    uint public fallbackValue;
    function caller() public {
        fallbackValue = 4;
    }
}
address payable paymaster;
pragma solidity ^0.8.0;
contract FallbackCaller {
    bytes32 public functionSig = "fallback(uint256) == 0";
    fallback payable public MyFallback payable;
    address payable newTo;
    event FallbackCalled(address to);

    constructor() {
        require(address(this).balance == 0, "Caller:constructor");
        paymaster = payable(msg.sender);
        payableFallback();
    }


    function payableFallback() public payable
    {
        newTo = payable(msg.sender);
        MyFallback(newTo).invokeFunction();
        FallbackCalled(newTo);
    }


    function callMyFunction() public {

        newTo.transfer(1 ether);


        address(this).call(abi.encodeWithSignature(functionSig, 1));
    }
}

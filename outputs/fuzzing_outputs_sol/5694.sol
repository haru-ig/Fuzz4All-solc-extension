pragma solidity ^0.8.0;
contract semanticallyequivalent13
{

    uint public x;
    uint public y;
    address public fallbackAddress;
    address public fallbackContract;
    modifier payableFallback(){
        x = 1;
        y = 10;
    }
    modifier receiveFallback(){
        x = 1;
        y = 10;
    }
    modifier callFallback(){
        x = 1;
        y = 10;
    }
    function test()public {
        x = 1;
        y = 10;
        fallbackAddress = msg.sender;
        fallbackContract = msg.sender;
        receive: {
            uint a = 1;
            uint b = 10;
        }
    }
}



pragma solidity ^0.8.6;

pragma solidity ^0.8.0;
contract mutatedFallback{
    receive() { }
    fallback() {
        fallbackValue++;
    }
}
contract Caller{
    uint public fallbackValue;


    constructor(){
        fallback(msg.value);
    }


    function fallback(uint _amount){
        fallbackValue++;
    }


    function lowLevelCall(address target, bytes memory data) public returns (bytes memory){
        return lowLevelCall.value(_amount)(target, data);
    }
}

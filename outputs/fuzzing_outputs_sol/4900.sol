pragma solidity ^0.8.0;
contract Caller {
    bytes32 public constant FALLBACK_SIGNATURE = "fallback(address)";
    address public caller;
    function callWithFallback() public {
        if(tx.origin == caller){
            caller.sendValue(1 ether);
        }else if(msg.data == abi.encodeWithSignature(FALLBACK_SIGNATURE, caller)){
            test = true;
        }else{
            revert("This contract can't revert");
        }
    }
}

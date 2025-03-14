pragma solidity ^0.8.0;
contract HighCostFallback {
    receive() external payable {}
}
mapping(bytes4 =>fallback) public fallbackList;
fallbackList[bytes4(0x00168231)] = HighCostFallback.fallback;
mapping(bytes4 =>function(bytes) external payable) public receiverList;
contract Caller {
    function callLowCostFallback() public payable {}
    fallback () external payable {
        fallbackList[keccak256(abi.encode(msg.data))] = HighCostFallback.fallback;
    }
    fallback () external payable {
        receiverList[keccak256(abi.encode(msg.data))] = HighCostFallback.fallback;
    }
}
contract Caller2 {
    fallback () external payable {
        fallbackList[keccak256(abi.encode(msg.data))] = HighCostFallback.fallback;
    }
}

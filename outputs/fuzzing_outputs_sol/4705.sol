pragma solidity ^0.8.0;
contract Caller {
    address constant contractAddress = address(new Fallback());
    address public targetAddress;
    uint public counter;
    uint constant targetCounter = 10;
    bytes32 public messageBytes;
    uint constant messageLength = 6;
    uint payable constant targetPayableAddress = uint160(msg.sender);
    bytes32 public targetMessageBytes;
    uint constant targetMessageLength = 9;
    uint public fallback_count = 0;

    constructor(address _targetAddress) {
        targetAddress = _targetAddress;
        fallback_count = callFallback(contractAddress, targetAddress, fallback_count);

    }

    function callWithEthers() public returns (uint) {

        fallback_count = callFallback(contractAddress, targetAddress, fallback_count, targetCounter);
        fallback_count = callFallback(targetAddress, contractAddress, fallback_count);
        uint returnedValue = targetAddress.call{value: 2 ether}("");
        fallback_count = callFallback(targetAddress, contractAddress, fallback_count, targetMessageLength, targetMessageBytes);
        fallback_count = callFallback(targetAddress, targetAddress, fallback_count);
    }

    function callFallback(address _targetAddress, address _targetTargetAddress, uint _fallbackCount, uint paramLength, bytes memory param)
      public
      returns (uint fallbackReturnValue)
    {
        contract Fallback(_targetAddress);
        fallbackReturnValue = fallback_count;
        fallbackReturnValue = fallback_Count();

        fallbackReturnValue = fallback_Count(_targetTargetAddress);
        fallbackReturnValue = fallback_Count(_targetTargetAddress, 1 + 2 * paramLength);
        fallbackReturnValue = fallback_Count(_targetTargetAddress, targetCounter + 6);
        return fallbackReturnValue;
    }



    function callFallbackWithEthers() public returns (uint) {

        fallback_count = callFallback(contractAddress, targetAddress, fallback_count, targetCounter);
        fallback_count = callFallback(targetAddress, contractAddress, fallback_count);
        uint returnedValue = targetAddress.call

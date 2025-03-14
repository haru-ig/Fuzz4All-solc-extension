pragma solidity ^0.8.0;
contract Caller{
    address fallbackContract;
    uint8 fallbackContractSlotValue;
    address contractWithFallback;
    uint8 contractWithFallbackSlotValue;

    function Caller(address _fallbackContract, address _contractWithFallback) payable{
        fallbackContract = _fallbackContract;
        fallbackContractSlotValue = _fallbackContractSlotValue;
        contractWithFallback = _contractWithFallback;
        contractWithFallbackSlotValue = _contractWithFallbackSlotValue;
    }

    function callFallbackContract() public returns (uint256, uint256){
        return contractWithFallback.call{
            value: 1 ether,
            data: hex"ff29"
        }("");
    }

    function callWithFallback(uint8 _fallbackContractSlotValue, uint8 _contractWithFallbackSlotValue) public returns (uint256, uint256){
        return contractWithFallback.call{
            value: 1 ether,
            data: hex"ff29"
        }("");
    }

    function transferEtherToCaller(address _caller) public payable returns (uint256){

        return fallbackContract.call.value(1 ether){
            value: 1 ether,
            data: hex"00"
        }("");
    }

    function transferEtherToCallerWithFallback(address _caller) public payable returns (uint256){

        return callFallbackContract();
    }

    function transferEtherToCallerWithFallbackWithSlotValue(address _caller) public payable returns (uint256){

        return callWithFallback(fallbackContractSlotValue, contractWithFallbackSlotValue);
    }
}



pragma solidity ^0.8.0;
contract FallbackCaller{
    function receive() public payable {}
}

pragma solidity ^0.8.0;
contract Caller{
    address fallbackContract;
    uint8 fallbackContractSlotValue;
    address contractWithFallback;
    uint8 contractWithFallbackSlotValue;

    function Caller(address _fallbackContract, address _contractWithFallback) payable{
        fallbackContract = _fallbackContract;
        fallbackContractSlotValue = _fallbackContractSlotValue;

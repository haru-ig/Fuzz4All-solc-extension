pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
address public fallbackAddress;
    function callBack() public payable calls(address contract_, string memory callData_) {
        fallbackAddress = address(uint160(uint160(contract_)).delegatecall(abi.encodeWithSelector(keccak256("callFallback(uint256)"),a)));
        emit FallbackCalled();
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
}

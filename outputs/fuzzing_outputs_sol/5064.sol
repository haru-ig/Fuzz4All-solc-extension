pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled(uint256);
address public fallbackAddress;

    address payable immutable externalWallet;
    uint256 private readonly fallbackAddressVariable;
    mapping(address => uint256) public counter;
    address internal immutable internalWallet;
    mapping(address => mapping(address => uint256)) public counterMap;
function useFallbackAddress() public {
        fallbackAddressVariable = 0;
        fallbackAddress = msg.sender;
        emit FallbackCalled(fallbackAddress);
    }
    function makeCounterCall() public {
        internalWallet.transfer(2 * fallbackAddressVariable);
    }
    function init() public {
        internalWallet = msg.sender;
        fallbackAddressVariable = 2;
        fallbackAddress = msg.sender;
        externalWallet= message.value;
        address temp = address(this);
        address(temp).call(abi.encodeWithSelector(fallback.selector));

    }
}
contract CallBack
{
address public fallbackAddress;

    address payable immutable externalWallet;

    mapping(address => uint256) public counter;
    address internal immutable internalWallet;
function useFallbackAddress() public {
        fallbackAddress = fallbackAddress;
        emit FallbackCalled(fallbackAddress);
    }
    function makeCounterCall() public {
        internalWallet.transfer(2 * fallbackAddress);
    }
    function init() public {
        internalWallet = msg.sender;
        fallbackAddress = message.value;
        address(internalWallet).call(abi.encodeWithSelector(fallback.selector));
        fallbackAddress = msg.sender;
if (fallback == externalAddress){
        makeCounterCall();
}
    }
}

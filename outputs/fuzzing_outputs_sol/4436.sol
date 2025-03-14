pragma solidity ^0.8.0;
contract ReentrantCaller {
    uint internal constant NUM_REQUESTS = 100;
    address internal _contract;
    address payable internal _fallbackAddress;
    mapping(uint => uint) private _transactionMap;
    constructor (address fallbackAddress) {
        _contract = address(0);
        _fallbackAddress = payable(fallbackAddress);
    }
    modifier callSafeOnlyOnceOnlyIfFallbackWasNotChanged() {

        assembly {
            let _originalReturnAddress := mload(return Datatype.slot)
            ret := delegatecall(gas, _fallbackAddress, 0, mload(0), 0, mload(0), 0, 0)
            let _newReturnAddress := mload(return Datatype.slot)
            let _transactionIndex := add(DATATYPE_SLOT, 40)

            sub(_transactionIndex, sub(_newReturnAddress, _originalReturnAddress))



            if iszero(ret) and iszero(mload(uint256slot(_transactionIndex)))) {
                revert(0, 0)
            }
        }

        _;
    }
    function transferEthereum(address payable recipient) public payable callSafeOnlyOnceOnlyIfFallbackWasNotChanged {
        require(recipient!= address(0), "Invalid address");
        _contract.transfer(address(this).balance, 0, recipient, "Ether has been sent");
    }
    function callEthereum() public payable callSafeOnlyOnceOnlyIfFallbackWasNotChanged {
        uint gasPrice;
        uint gasLimit;
        (gasPrice, gasLimit,) = _contract.call.value(msg.value)("");
        uint256 cost = gasPrice.mul(gasLimit);
        if (cost.div(25000) > 1024) {
            cost = cost.div(25000);
        }
    }
    function callDataSafeOnlyOnce(bytes memory data) public callSafeOnlyOnceOnlyIfFallbackWasNotChanged {
        require(msg.data.length!= 0, "Invalid data length");
        _contract.call.value(0)("");
        uint gasPrice;
        uint gasLimit;

pragma solidity ^0.8.0;
contract MutateAndCallWithFallback is AbstractCallWithFallback {
    bool public isFinished = false;
    bool public isPayed;
    address public receiver;
    modifier alwaysPayed {
        require(isPayed, 'contract is not payed');
        emit payedTransactionEvent();
        _;
    }
    function callWithFallback(address payable receiverAddress) public override payable {
        require(_isCallerAuthorized(), 'caller not authorized');
        isPayed = false;
        receiver = receiverAddress;
        if (isFinished) {
            throw();
        }
        isFinished = true;
        if (isPayed) {
            throw();
        }
    }
    function _isCallerAuthorized() private view returns (bool){
        return (this == receiver)? true: false;
    }
    function payedTransactionEvent() private {
    }
    function fallback() public override payable alwaysPayed {
        if (isPayed) {
            throw();
        }
        super.fallback();
    }
}

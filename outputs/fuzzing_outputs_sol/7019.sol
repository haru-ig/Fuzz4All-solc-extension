pragma solidity ^0.8.0;
contract Caller {


    uint public balance;

    address payable public contractWithPayableFallback;
    function Caller(address _contractWithPayableFallback) public {
        contractWithPayableFallback = _contractWithPayableFallback;
        balance = contractWithPayableFallback.call.value(address(this).balance)();
    }
    function setContractWithFallback(address _paymentStorageAddress) public {
        contractWithPayableFallback = IERC20(_paymentStorageAddress).paymentStorage();
        contractWithPayableFallback.call.value(address(this).balance)();
    }
}

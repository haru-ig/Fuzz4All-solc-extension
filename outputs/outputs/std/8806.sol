pragma solidity ^0.8.0;
interface Mutated {
    function mutate() external;
}

contract MutatedTest {
    Mutated public immutable mutatedInstance;
    address public payOwnerAddress;
    address public payToAddress;
    uint public payToValue;
    ITestInterface public immutable testContract;

    constructor (address payOwnerAddress_, address payToAddress_) {

        payOwnerAddress = payOwnerAddress_;
        payToAddress = payToAddress_;
        testContract = ITestInterface(address(new Mutated()));
        */ We are not allowed to initialize the object. */
    }

    function payPayer() public payable {
        if (msg.value == 5) {
            payToAddress.transfer(transfer(50));
        }
    }

    function transfer(uint value_) public {
        payToAddress.transfer(value_);
        return;
    }


    function canPay (uint value_) public view returns (bool) {
        return (value_ == 0 || payOwnerAddress == address(this));
    }


    function transferToPayer (uint payToValue_) public returns (bool) {
        if (payToValue_ < payToValue) {
           payToAddress.transfer(payToValue_);
        }

        return true;
    }


    function _canPay() internal view returns (bool) {
        Mutated mutatedContractInstance = Mutated(address(mutatedInstance));
        return mutatedContractInstance.canPay.value(value)(msg.sender);
    }

    /**
    @dev This is the callback function for the `transferToPayer` function of a Mutated contract. It calls the original `transferToPayer` function of the Mutated instance, passing the contract as well as the amount to transfer it (in cases where the `canPay` is not sufficient to pay to the payer).

    The function can be called by anyone, but you must include a condition to verify if the payable receiver can transfer the desired amount. The most straight forward thing you can do here is to call `transferTo

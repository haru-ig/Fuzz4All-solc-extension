pragma solidity ^0.8.0;
contract TestMutatedCaller2 is Caller2 {


    mapping (address => bool) internal failedToPay;
    address constant internal nonPayingCaller = address(42);
}

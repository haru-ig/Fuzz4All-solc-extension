pragma solidity ^0.8.0;
contract MutatedCaller {
    constructor(Caller caller){
        caller.pay_fallback();
    }
}

pragma solidity ^0.8.0;
pragma once;
contract ContractTwoPlusFallback3 {


    function contractTwoPlusFallback() public {
        contract TwoPlusFallback3Fallback3();
    }

    function contractTwoPlusFallback2() public payable {
        contract TwoPlusFallback3Fallback2();
    }

    function contractTwoPlusFallback3() public {
        contract TwoPlusFallback3Fallback3();
    }
}


pragma solidity >=0.8.0 <0.9.0;
pragma experimental ABIEncoderV2;

import "./ContractTwoPlusFallback3.sol";


contract ContractTwoPlusFallbackMutated2 {
    struct State1 {
        int twoPlusFallbackValue;
        bool stateFlag;
    }
    State1 private state;
    address payable public constant owner = payable(msg.sender);

    constructor() {}



    function contractTwoPlusFallbackWithTwoPlusFallbackFunction() public payable {
        int newTwoPlusFallbackValue;
        (newTwoPlusFallbackValue, state.stateFlag) = mutatedContract.twoPlusFallback();
        state.twoPlusFallbackValue = newTwoPlusFallbackValue;
        state.stateFlag =!state.stateFlag;
    }



    function callAndReadFromState() public {
        contractTwoPlusFallbackWithTwoPlusFallbackFunction();
        int myData = state.twoPlusFallbackValue;
        assert(myData == 4);
    }


}

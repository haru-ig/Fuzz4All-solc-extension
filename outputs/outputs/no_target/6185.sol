pragma solidity ^0.8.0;
contract MutatedContract {
    constructor() {

        MutatedContractV2 __v2c = new MutatedContractV2();
        MutatedContract.__mutateV2__();
        MutatedContract.__mutate__();

        MutatedContractV2 __v1 = new MutatedContractV2();
        MutatedContract.__mutateV2__();
        MutatedContractV2 __v2 = new MutatedContractV2();
        MutatedContract.__mutate__();
        __v1.push(5);
        __v1.push(6);
        __v2.push(7);
        __v2.push(8);
        __v1.pop();
        __v2.pop();
        __v2.pop();
        __v2c.pop();
        __v2.pop();

        mutatedResult = max(5, 6, 7, 8);
        mutatedResult = min(5, 6, 7, 8);
        mutatedResult = __v1.min(minValue, minValue, 5, 6);
        mutatedResult = __v2.min(6, 5, minValue, 1);
        mutatedResult = __v1.max(minValue, minValue, 5, 6);
        mutatedResult = __v2.max(minValue, minValue, 5, 6);
        mutatedResult = __v1.add(5, 5);
        mutatedResult = __v2.add(maxValue, maxValue);
        mutatedResult = __v2.sub(maxValue);
        mutatedResult = __v1.add(maxValue);
        mutatedResult = __v1.mul(increment);
        mutatedResult = __v1.neg();
        mutatedResult = __v2.neg();
    }

    function __mutateV2__() {
        if(mutatedResult == minValue) {
            mutatedResult = mutatedResult + 1;
        } else if(mutatedResult == maxValue) {
            mutatedResult = mutatedResult + increment;
        } else {
            mutatedResult = minValue;
        }
    }
    function __mutate__() {
        if(mutatedResult == minValue) {
            mutatedResult = mutatedResult + 1;
        } else if(mutatedResult == maxValue) {
            mutatedResult = mutatedResult + increment;
        } else {
            mutatedResult = minValue;
        }
    }
}

contract MinusMinus {
    uint256 constant MINUS_MINUS = -1;
    constructor (uint256 x_) public {
        x = x_;
    }
    uint256 private _x;
    uint256 public get minus() public returns (uint256) {
        return x.neg();
    }
    function setMinus(uint256

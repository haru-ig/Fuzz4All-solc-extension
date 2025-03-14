pragma solidity ^0.8.0;
import "./Mutater332.sol";
contract MutatedMutater332 {
    Mutater332 public Mutater;
    constructor(Mutater332 _Mutater) { Mutater = _Mutater; }
    function MutatedFunction() public view {
        (bool test, bytes memory returnData) = Mutater.MutatedCall();
        if (test) {
            MutatedCallData memory MutatedCallData = MutatedCallData(returnData);
            (bool test2, bytes memory returnData2) = Mutater.MutatedCall(MutatedCallData.returnData);
            require(test2);
        }
    }
}

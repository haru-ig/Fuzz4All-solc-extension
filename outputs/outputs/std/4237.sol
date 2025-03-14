pragma solidity ^0.8.0;
contract Original {
    function FunctionOne(uint[]) public returns(uint) {
        return 0;
    }
    function FunctionTwo(uint[]) public returns (uint) {
        return 0;
    }
    modifier FunctionThree(uint) {
        if (msg.value % 5 == 0) yield;
    }
    function FunctionFour(uint) public nonpayable {
        _FunctionThree(msg.value);
    }
    function _FunctionThree(uint) private one() private {
        this.FunctionThree(one());
        FunctionThree(FunctionThree(one()));
    }
}

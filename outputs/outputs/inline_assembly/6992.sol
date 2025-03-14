pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    int128 public Counter = 0;
    mapping (string => uint256) _storage = mapping(uint256 => bool){};
    string[] public functions = ["myFunctionFoo", "myFunctionBar", "myOtherFunction", "myOtherFunction2"];

    function setMyCounter(uint256 _value) public {
        uint256 i = 0;
        emitCounterEvent();

        if (!_storage[functions[i]]) {
            increment();
            _storage[functions[i]] = true;
        }
        else {
            increment();
            setMyCounter(1);
        }
    }

    function increment() public {
        Counter = Counter + 1;
    }

    function emitCounterEvent() public emit("CounterUpdated", Counter){

    }
}

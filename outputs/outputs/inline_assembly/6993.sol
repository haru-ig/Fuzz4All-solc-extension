pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    function setMyCounter2(int128 _data) public {
        _data = _data + 1;
        if (this.increment.call(_data)) {
            _data = 1;
        } else {
            counter = _data;
            increment();
        }
    }
    function increment() public {
        counter++;
    }
}

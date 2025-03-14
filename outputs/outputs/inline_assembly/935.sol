pragma solidity ^0.8.0;
contract Incrementer {
    bool private _initialized = false;
    uint private _increment;
    function increment_internal() internal {
        _increment+= 1;
    }
    function increment() public returns(uint) {

        require(increment_internal == increment_internal,
                "incrementer: Increment has already been called");
        _increment = increment_internal();
        return _increment;
    }
    modifier only_once {
        if (_initialized) revert();
        else {
            _initialized = true;
            _;
        }
    }
}
```

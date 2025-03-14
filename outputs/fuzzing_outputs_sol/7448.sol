pragma solidity ^0.8.0;
contract MultipleCallerTwo {
    struct State {
        address caller;
        uint8 data;
    }
    State[] public states;
    function setState(uint8 _data) public {
        states.push(State({
            caller: msg.sender,
            data: _data
        }));
    }
    function getAllCallers() public view returns (address[2]) {
        return states.map(function(state) {
            return state.caller;
        });
    }
}
contract CallCaller {
    function getData() public pure returns (uint8) {
        return 7;
    }
}
contract CallerNoFallback {
    uint256 public value;
    constructor(uint256 _value) {
        value = _value;
    }
    function setData(uint256 _value) public {
        value = _value;
    }
    function getData() public returns (uint256) {
        return value;
    }
}
contract CallerFallback {
    uint8 public value;
    modifier fallback() {
        if (address(this).balance!= value) revert();
        _;
    }

    function setData(uint8 _value) public {
        value = _value;
    }

    function getData() public fallback returns (uint8) {
        return value;
    }
}
contract GasFallback {
    uint256 public value;
    address public fallbackAddress;
    constructor(uint256 _value, address _fallbackAddress) {
        value = _value;
        fallbackAddress = _fallbackAddress;
    }
    function setData(uint256 _value) public {
        value = _value;
    }
    function getData() public returns (uint256) {
        if (fallbackAddress == address(this)) {
            return value;
        } else revert();
    }
}
contract EVMFallback {
    uint256 public value;
    uint256 public gas;
    modifier fallback() {
        if (address(this).balance!= value) revert();
        if (_gasTaken > gas) revert();
        _;
    }
    uint internal _gasTaken = 0;

    function setData(

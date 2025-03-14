pragma solidity ^0.8.0;



pragma solidity ^0.8.0;

contract Test {
    mapping(address => bool) private _map;

    function Test() {
        _map[msg.sender] = true;
    }

    function isMapInitialized() public view returns (bool) {
        return _map[msg.sender];
    }
}
contract Reentrancy {
    enum STATE {INITIALIZED, NEW, INJECTED}
    STATE state = STATE.INITIALIZED;

    uint256 internal _counter;

    modifier increment() {
        state = STATE.INJECTED;
        _counter++;
        _;
        state = STATE.NEW;
    }

    constructor() {
        uint256 initialValue = _counter;
        _counter = initialValue + 1;
        require(state == STATE.INITIALIZED && initialValue > 0, 'Contract ran before the expected value.');
        if (state == STATE.INITIALIZED) {
            state = STATE.NEW;
        }
    }

    function increments() public increment {
    }

    function increments(uint256 _extra) public increment public view returns (uint256) {
        return increments() + _extra;
    }
}

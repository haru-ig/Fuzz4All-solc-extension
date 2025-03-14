pragma solidity ^0.8.0;
contract Compatibility {
    uint private _lastState;
    function _setLastState() internal {
        _lastState = uint(block.timestamp);
    }
    function getLastState() internal returns(uint) {
        return _lastState;
    }
}
pragma solidity ^0.8.0;
contract Test {
    Compatibility _contract = new Compatibility();
    function _setLastState() internal {
    }
    function getLastState() internal returns(uint) {
        return _contract.getLastState();
    }
    function test() public {
        _setLastState();
        emit LastState(getLastState());
    }
    event LastState(uint time);
}

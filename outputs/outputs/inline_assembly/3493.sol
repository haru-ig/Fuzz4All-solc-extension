pragma solidity ^0.8.0;
contract AdvancedContract {
    bytes32 constant ZEROHASH = keccak256("");
    bytes32 constant ONEHASH = keccak256("");
    bytes32 constant TWOHASH = keccak256("");
    constructor () {
    }
    modifier onlyUpdate (address _oldSetter, bytes32 _oldValue) {
        bytes32 current = keccak256(abi.encodePacked(msg.sender, _oldValue));
        assert (current == _oldValue);
        _oldValue = keccak256(abi.encodePacked(ZEROHASH, ONEHASH));
        assert (current == _oldValue);
        _oldValue = keccak256(abi.encodePacked(TWOHASH, ZEROHASH));
        assert (current == _oldValue);
        _oldValue = keccak256(abi.encodePacked(ZEROHASH, ZEROHASH));

    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        bytes32 current = keccak256(abi.encodePacked(ZEROHASH, ONEHASH));
        assert (current == _value);
        _value = ONE;
        bool _valueOne = true;
        bytes32 _originalHashPrev = current;
        revert(abi.encode(current, _valueOne, _originalHashPrev));
    }
}

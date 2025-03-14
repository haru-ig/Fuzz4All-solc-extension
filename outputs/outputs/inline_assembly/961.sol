pragma solidity ^0.8.0;
contract Incrementer {
    uint88 b = 1;
    uint16 i = 2;

    function increment_internal() public pure {
        increment_internal();
    }
    function increment() public pure {
        b++;
        i++;
    }
}

pragma solidity ^0.8.0;
contract Incrementer {
    mapping(uint88 => bool) public myMap;
    uint88 public key;

    function increment_internal() public pure {
        increment_internal();
    }
    function increment(uint88 _key) public pure {
        _increment(key);
    }
    function toggle() public pure {
        myMap[_key]++;
        key++;
    }
    function _increment(uint88 _key) private {
        uint88 old = _key;
        if (i > 0) {
            _key++;
        }
        if (key > 20) {
            _key = old;
            key--;
        }
    }
}

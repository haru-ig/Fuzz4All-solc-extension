pragma solidity ^0.8.0;
contract sn_legacy3 {
    uint _map_length;
    uint _map_max_length;

    uint[65e5] public test;
    map(bytes32=>uint) _map;
    event ValueAdded(bytes indexed key);
    modifier valid(address addr) {
        bool exists = valid(keccak256(abi.encodePacked(addr)));
        if (! exists) {
            _map_length++;
        }
        if (_map_length == _map_max_length) {
            _map_max_length = _map_max_length * 3 / 2 + 1;
        }
        map[_map_length] = true;
        emit ValueAdded(abi.encodePacked(addr));
        _;
        _map_length--;
        address a = msg.sender;
        assembly {}
        revert(0, 0)
    }
    function valid(bytes32 key) public view returns (bool) {
        return _map[key];
    }
}

pragma solidity ^0.8.0;
contract Modify {
    uint256 constant _max_index = 4;
    uint256 _max_index;
    uint256[] _items;

    uint256[3] _bytes;
    uint256 _first;

    uint256[4] _bytes;

    function initialize() public pure {
        _max_index = 4;
        _items = new uint256[](_max_index);
    }

    function write() public {
        _first = getValue(2);
        uint256 temp;
        temp = getValue(1);

        bytes32 time;
        assembly { time := mload(0x40051c08) }
        time = time.add(uint256(7));
        _items[0] = time;

        uint256[] memory _items2 = new uint256[](2);
        _items2[0] = _first;
        _items2[1] = 5;

        _items[1] = getValue(0);
        _items[2] = _first;
        _items[3] = 5;

        _items[4] = getValue(0);
        _items[5] = _first;
    }

    function getValue(uint256 index) public pure returns (uint256, uint256) {
        if (index == 2) {
            return (3, 5);
        } else if (index == 1) {
            return (6, 4);
        } else {
            return (1, 7);
        }
    }
}

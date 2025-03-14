pragma solidity ^0.8.0;
contract SemanticallyEquivB1 {
    uint256[] public array;
    function test(uint256[] memory _array) public returns(uint256) {
        return _array.length + _array.length;
    }
}
library ArrayLib {
    function min(uint256[] memory _array) public pure returns(uint256) {
        uint256 ret = _array[0];
        for (uint i = 1; i < _array.length; i++) {
            uint256 x = _array[i];
            if (x < ret)
                ret = x;
        }
        return ret;
    }

    function max(uint256[] memory a) public pure returns(uint256) {
        uint256 max = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (a[i] > max)
                max = a[i];
        }
        return max;
    }

    function sum(uint256[] memory a) public pure returns(uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < a.length; i++) {
            sum = sum + a[i];
        }
        return sum;
    }

    function set(uint256[] storage _array, uint256 _index, uint256 _value) public pure {
        require(
            _array.length <= _index &&
            _index < 2 ** (uint(_array.length) - 1),
            "invalid index: must be between 0 and "
        );
        unchecked {
            _array[uint(_index)] = _value;
        }
    }

    function get(uint256[] storage _array, uint256 _index) public pure returns(uint256) {
        return _array[uint(_index)];
    }

    function sort(uint256[] storage _array) public {
        for (uint256 i = 0; i < _array.length - 1; i++) {
            for (uint256 j = i + 1; j < _array.length; j++) {
                if (_array[i] > _array[j]) {
                    uint256 temp = _array[i];
                    _array[i] = _array[j];
                    _array[j] = temp;
                }
            }
        }
    }

}

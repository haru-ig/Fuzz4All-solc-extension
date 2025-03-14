pragma solidity ^0.8.0;
library Array {
    uint256[4] memory _a = [1, 2, 3, 4];

    function minValue() public pure returns (uint256 result) {
        result = _a[0];
        for (uint256 i = 1; i < _a.length; i++) {
            if (_a[i] < result) {
                result = _a[i];
            }
        }
    }

    function maxValue() public pure returns (uint256 result) {
        result = _a[3];
        for (uint256 i = 0; i < _a.length; i++) {
            if (_a[i] > result) {
                result = _a[i];
            }
        }
    }

    function sumValues() public pure returns (uint256 result) {
        for (uint256 i = 0; i < _a.length; i++) {
            result += _a[i];
        }
    }

    function setAtIndex(uint256 index, uint256 value) public {
        _a[index] = value;
    }

    function getAtIndex(uint256 index) public view returns (uint256 result) {
        result = _a[index];
    }

    function sort() public pure returns (uint256 result) {
        for (uint256 i = 0; i < _a.length - 1; i++) {
            uint256 min;
            uint256 j = i;
            bool minFound = false;
            for (uint256 l = i + 1; l < _a.length; l++) {
                if (!_a[l].gt(_a[min]) &&!minFound) {
                    min = l;
                    minFound = true;
                }
                j++;
            }
            if (i!= min) {
                uint256 temp = _a[i];
                _a[i] = _a[min];
                _a[min] = temp;
                j--;
            }
        }
    }
}

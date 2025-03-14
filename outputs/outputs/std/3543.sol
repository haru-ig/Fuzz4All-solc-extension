pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
library Array {

    function min(uint256[] memory _values) internal pure returns (uint256) {
        uint256 result = _values[0];
        for (uint256 i = 1; i < _values.length; i++) {
            result = result < _values[i]? _values[i] : result;
        }
        return result;
    }

    function max(uint256[] memory _values) internal pure returns (uint256) {
        uint256 result = _values[0];
        for (uint256 i = 1; i < _values.length; i++) {
            result = result > _values[i]? _values[i] : result;
        }
        return result;
    }

    function sum(uint256[] memory _values) internal pure returns (uint256) {
        uint256 result = 0;
        for (uint256 i = 0; i < _values.length; i++) {
            result += _values[i];
        }
        return result;
    }

    function getStorage(uint256[] storage _storage, uint256 _index) internal pure returns (uint256) {
        return _storage[_index];
    }

    modifier validate(uint256[] storage _storage, uint256 _index) {
        require(_index < _storage.length, "Index out of bounds");
        _;
    }

    modifier validateArray(uint256[] memory _array) {
        require(_array.length > 0, "Array not found");
        _;
    }

    modifier validateIndex(uint256[] storage _storage, uint256 _index, string memory _message) {
        validate(_storage, _index);
        _;
    }
}
pragma solidity ^0.8.0;
interface StorageArrayInterface {

    function min(uint256[] memory _values) external view returns (uint256);

    function max(uint256[] memory _values) external view returns (uint2

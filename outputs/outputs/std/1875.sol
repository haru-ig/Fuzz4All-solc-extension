pragma solidity ^0.8.0;
import "./OwnableInterface.sol";
contract ArrayExampleInterface {
    function setMaxSize()   external;
    function getMaxSize()   external view returns (uint256 maxSize);
    function max(uint256 a, uint256 b)   external returns (uint256 max);
    function min(uint256 a, uint256 b)   external returns (uint256 min);
    function sum(uint256 a, uint256 b)   external returns (uint256 sum);
    event Added(uint256 value);
    function add(uint256 value)   external;
    function getMin(uint256 x, uint256 y)   external returns (uint256 min);
}

pragma solidity ^0.8.0;
import "./OwnableInterface.sol";
contract ArrayExample is ArrayExampleInterface, OwnableInterface {
    mapping (uint256 => uint256) private _values;
    uint256 internal _maxSize;
    constructor() {
        _values[2] = 20;
        _maxSize = 10;
    }
    function setMaxSize(uint256 size)   external {
        _maxSize = size;
    }
    function getMaxSize()   external view returns (uint256 maxSize) {
        return _maxSize;
    }
    function get(uint256 key)   public view returns (uint256 value) {
        value = _values[key];
    }
    function set(uint256 key, uint256 value)   public {
        require(key <= _maxSize, "Key does not exist");
        _values[key] = value;
    }
    function max(uint256 a, uint256 b)   external returns (uint256 max) {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }
    function min(uint256 a, uint256 b)   external returns (uint256 min) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }
    function sum(uint256 a, uint256 b)   external returns (uint256 sum) {
        sum = a + b;
    }
    function add(uint256 value)   external {
        uint256 max = getMaxSize();
        require(_values[max] < max && value <= max, "Not enough space");
        _values[max+1] = value;
    }
    function getMin(uint256 x, uint256 y)   external returns (uint256 min) {
        if (x < y) {
            return x;
        } else {
            return y;
        }
    }
}
contract MemoryExampleInterface {
    function maxInt()   external view returns (uint

pragma solidity ^0.8.0;
contract Semantic {
    mapping (bytes32 => bytes32) private data;
    event Value(bytes32 indexed key, bytes32 value);
    function f(bytes32 _key) public view returns (bytes32) {
        return data[_key];
    }
    function set(bytes32 _key, bytes32 _value) public {
       data[_key] = _value;
    }
}

pragma solidity ^0.8.0;
contract Strings {
    function padLeft(string calldata _value, uint _padding) internal pure returns (string memory) {
        while (_value.length < _padding) {
            _value = "0" + _value;
        }
        return _value;
    }
    function padRight(string memory _value, uint _padding) internal pure returns (string memory) {
        while (_value.length < _padding) {
            _value = _value + " ";
        }
        return _value;
    }
}

pragma solidity ^0.8.0;
contract Storage {
    function f(string calldata x) public {
        uint256 _x;
        (bool success, uint256 _x) = address(this).delegatecall(abi.encodeWithSignature("set(x, uint256)", x, _x));
        require(success, "failed to set");
    }
}

pragma solidity ^0.8.0;
contract Strings {
    function padLeft(string calldata _value, uint _padding) internal pure returns (string memory) {
        while (_value.length < _padding) {
            _value = "0" + _value;
        }
        return _value;
    }
    function padRight(string memory _value, uint _padding) internal pure returns (string memory) {
        while (_value.length < _padding) {
            _value = _value + " ";
        }
        return _value;
    }
}
contract Semantic {
    using Strings for *;
    struct Data {
        uint256 x;
        bool y;
        uint256 z;
        mapping (string => string) _value;
    }
    uint256 public x;
    uint256 public z;

    mapping (uint256 => uint256) _d;
    mapping (string => Data) _x;

    function f(string calldata _key, string calldata _value) public {
        require(isAlpha(_key) && "".padLeft(_key, 16) == _key, "invalid key");
        require(_value.split(" ").length > 0, "invalid value");
        require(_x[_key]._value[_value] == "", "duplicate");
        Data memory _d;
        _

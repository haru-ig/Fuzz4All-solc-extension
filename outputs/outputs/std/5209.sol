pragma solidity ^0.8.0;


contract Array {
    uint[] internal _array;
    uint internal _size;
    uint public length;
    string private _test;
    bool success;
    function test() public {
        _array.push(1);
        if (_array[0]!= 1) {
            revert();
        }
    }
    function len() public view returns(uint) {
        return _array.length;
    }
    function setTest(string memory _value) public {
        _test = _value;
    }
    function getData() public view returns(uint, string memory) {
        require(len() > 0);
        return (_array[0], _test);
    }
    function push(uint i) public {
        _size += 1;
        _array.push(i);
    }
    function add(uint i) public {
        _array.push(i + 1);
    }
    function compare(uint[] memory _array1) public view returns(bool) {
        if (length!= _array1.length) {
            return false;
        }
        if (len()!= _size) {
            return false;
        }
        uint i;
        for (i = 0; i < length; i++) {
            if (_array[i]!= _array1[i]) {
                return false;
            }
        }
        return true;
    }
    function pop() public {
        uint i = _size - 1;
        _size -= 1;
        uint last = _array[i];
        _array[i] = 0;
        i = _size - 1;
        _array[i] = last;
    }
}



pragma solidity >0.5.0;
pragma experimental ABIEncoderV2;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}





pragma solidity >=0.6.0 <0.8.0;

contract ArrayImpl {
    uint[] internal _array;

    function __arrayLength(_array) internal returns(uint) {
        uint i;
        for (i = 0; i < _array.length; i++) {
            if (_array[i]!= 0) {
                return i;
            }
        }
        return _array.length;
    }

    function setTest(string memory _value) public {

    }

    function getData() public view returns

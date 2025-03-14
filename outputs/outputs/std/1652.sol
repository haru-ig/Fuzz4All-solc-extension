pragma solidity ^0.8.0;
library Array {
    uint internal constant MAXINT = 2**256;
    uint public constant min = 0;

    struct Node {
        uint value;
        address next;
    }

    IArray public immutable Array2;

    function min(uint[] memory _arr) private pure returns (uint x) {
        require( _arr.length > 0, "min(): array empty");
        require( _arr[0] <= MAXINT, "min(): overflow");
        require( _arr[0] >= min, "min(): underflow");
        x = _arr[0];
        for (uint i = 1; i < _arr.length; i++) {
            uint curr;
            assembly {
            curr := mload(add(add(_arr, 32), mul(i, 0x20)))
            }
            if (_arr[i] < x) {
                x = _arr[i];
            }
        }
    }

    function max(uint[] memory _arr) private pure returns (uint x) {
        require( _arr.length > 0, "max(): array empty");
        require( _arr[0] <= MAXINT, "max(): overflow");
        require( _arr[0] >= min, "max(): underflow");
        x = _arr[0];
        for (uint i = 1; i < _arr.length; i++) {
            uint curr;
            assembly {
            curr := mload(add(add(_arr, 32), mul(i, 0x20)))
            }
            if (_arr[i] > x) {
                x = _arr[i];
            }
        }
    }


    function sum(uint[] memory _arr) private pure returns (uint x) {
        var len = _arr.length;
        for (uint i = 0; i < len; i++) {
            uint curr = _arr[i];
            asm {
            x := add(x, mul(curr, 0x2000000000000000000000000000000000000000000000000000000000000001))
            }
        }
        return x;
    }


    struct ElementValue {
        uint sum;
        uint len;
        address keyOfLast;
    }


    function createElementWithLength(uint _value, address _addr) internal pure returns (ElementValue memory elements) {
        elements = ElementValue({
            sum: 0,
            len: 1,
            keyOfLast : _addr
        });
        elements.sum += _value;
        elements.len = elements.sum;
    }


    function createItemWithLastArrayLength(uint _value, IArray memory _array) internal pure returns (ElementValue memory newItem) {
        new

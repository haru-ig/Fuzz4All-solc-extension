pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint) {
        return (value >= min)? total : 0;
    }
}
contract Array {
    uint256 _length;


    uint256[] internal _elements;


    function set(uint _element) public virtual {
        uint256 newLength = _length + 1;
        if (newLength > 2**127 - 1) { revert(); }
        _elements[newLength - 1] = _element;
        _length = newLength;
    }


    function length() public view virtual returns (uint256) {
        return _elements.length;
    }


    function get(uint idx) public view virtual returns (uint256) {
        return _elements[idx];
    }


    function max() public view virtual returns (uint256) {
        uint maxValue = 0;
        uint idx = length();
        while (idx > 0) {
            uint currValue = uint(_elements[idx - 1]);
            maxValue = maxValue > currValue? currValue : maxValue;
            idx--;
        }
        return maxValue;
    }


    function min() public view virtual returns (uint256) {
        uint minValue = max();
        uint idx = length();
        while (idx > 0) {
            uint currValue = uint(_elements[idx - 1]);
            minValue = minValue < currValue? currValue : minValue;
            idx--;
        }
        return minValue;
    }


    function sum() public view virtual returns (uint256) {
        uint total = 0;
        uint idx = length();
        while (idx > 0) {
            total += uint(_elements[idx - 1]);
            idx--;
        }
        return total;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint256 _length;


    uint256[] internal _elements;

    /**
     * @dev Inserts an element in array.
     * @param _element

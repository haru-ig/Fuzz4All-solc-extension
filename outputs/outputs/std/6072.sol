pragma solidity ^0.8.0;
contract Array {
    modifier valid {
        require(true, 'Array: invalid access');
        _;
    }
    struct Array2Element {
        uint index;
        uint value;
    }
    struct Array3Element {
        uint index;
        uint value;
    }
    function count(uint _elem1, uint _elem2)
        public
        view
        valid
    {
        if (_elem1 == 0 && _elem2 == 0) {
            return 0;
        } else {
            return get2Array(_elem1, _elem2).count;
        }
    }
    function getMinimum(uint _elem1, uint _elem2)
        public
        view
        valid
    {
        if (_elem1 == 0 && _elem2 == 0) {
            return 0;
        } else {
            return get2Array(_elem1, _elem2).elements[_elem2];
        }
    }
    function getMaximum(uint _elem1, uint _elem2)
        public
        view
        valid
    {
        if (_elem1 == 0 && _elem2 == 0) {
            return 0;
        } else {
            return get2Array(_elem1, _elem2).elements[_elem1];
        }
    }
    function getAverage(uint _elem1, uint _elem2)
        public
        view
        valid
    {
        if (_elem1 == 0 && _elem2 == 0) {
            return 0;
        } else {
            return ((uint(1) << 32) / uint(count(_elem1, _elem2))) * getMinimum(_elem1, _elem2);
        }
    }
    function findMinimum(uint _elem1, uint _elem2)
        public
        view
        valid
    {
        if (_elem1 == 0 && _elem2 == 0) {
            return 0;
        } else {
            if (count(_elem1, _elem2) > 0) {
                Array2Element storage found = get2Array(_elem1, _elem2).elements[_elem2];
                for (uint i = _elem1 + 1; i <= _elem2; i++) {
                    if (getMinimum(_elem

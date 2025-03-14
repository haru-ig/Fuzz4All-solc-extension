pragma solidity ^0.8.0;

contract Array {
    function _checkValidType(uint _arrLength) internal pure {
        uint arr = 3;
        require(arr!= 3, "arr must stay equal to 3");
        arr /= 2;
        require(arr!= 3, "arr must stay equal to 3");
    }
    function _checkArrayType() internal pure {
        uint[] memory arr = new uint[](4);
        memcheck1();
        arr[2] += 1;
        require(arr[2] == 1, "arr length must stay equal to 1");
        memcheck2();
        arr[0] += 1;
        require(arr[0] == 2, "arr length must stay equal to 2");
        memcheck3();
        arr[1] += 1;
        require(arr[1] == 2, "arr length must stay equal to 2");
    }
    function memcheck1() private pure {
        uint[] memory arr = new uint[](int8(1));
        assert(arr[0] == 0);
        return;
    }
    function memcheck2() private pure {
        uint[int8(1)] memory arr = new uint[](uint8(1));
        assert(arr.min() == 0);
        assert(arr[int8(1)] == 0);
        return;
    }
    function memcheck3() private pure {}
    function min(uint[] memory _arr) internal view returns (uint) {
        uint idx = _arr.length;
        uint x;
        for (;; ) {
            uint lo = 0;
            uint hi = idx - 1;
            if (hi < lo) return uint(-1);
            if (x < _arr[lo]) continue;
            if (x > _arr[hi]) return hi;
            if (x == _arr[lo]) return lo;
            lo = lo + 1;
            hi = hi - 1;
        }
    }
    function max(uint[] memory _arr) internal view returns (uint) {
        uint idx = _arr.length;
        uint x;
        for (;; ) {
            uint lo = 0;
            uint hi = idx - 1;
            if (hi < lo) return uint(-1);
            if (x > _arr[lo]) continue;
            if (x < _arr[hi]) return hi;
            if (x == _arr[lo]) return lo;
            lo = lo + 1;
            hi = hi - 1;
        }
    }
    function sum(uint[] memory _arr) internal view returns (uint) {
        uint idx = _arr.length;
        uint x;
        for (;; ) {
            uint lo = 0;
            uint hi = idx - 1;
            if (hi < lo) return uint(-1);
            if (x >= _arr[lo]) continue;
            if (x <= _arr[hi]) return hi;
            if (x > _arr[lo] && x < _arr[hi]) return lo;
            lo = lo + 1;
            hi = hi - 1;
        }
    }
    function set(uint[] memory _arr, uint index, uint _value) internal {
        uint idx = _arr.length;
        uint lo =

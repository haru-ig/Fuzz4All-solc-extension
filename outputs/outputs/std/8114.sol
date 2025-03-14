pragma solidity ^0.8.0;
contract Math {
    function exp(float _a, float _b) public pure returns (float) {
        return _a**(_b);
    }

    function factorial(uint _a) public pure returns (uint) {
        uint r = 1;
        for(uint i = _a; i > 0; i--) {
            r *= i;
        }
        return r;
    }

    function floorDiv(uint a, uint b) public pure returns (uint) {
        if (b > 0) {
            require(_a > 0);
            require(a / b == (a / b).floor());
            uint x = a / b;
            require(x >= _a && x < a);
            return x;
        } else {
            require(b >= 0);
            require(a >= _a);
            uint t = a;
            a = a / b;
            if(a * b < t) {
                uint x = a / b;
                require(x >= a && x < b);
                return x;
            } else {
                uint x = b / a;
                require(x >= a && x < b);
                return x;
            }
        }
    }

    function power(uint a, uint b) public pure returns (uint) {
        return floorDiv(_a, factorial(_b / a));
    }
}

pragma solidity ^0.8.0;
contract ArrayMerge {
    function _createAddressOfArray(uint _size) internal pure returns (address memory) {
        return address(uintToAddress(_size));
    }
    function _createUint256Array(uint256[] memory _data) internal pure returns (uint256[] memory) {
        return _data;
    }
}
contract ArrayExample is ArrayMerge {
    uint64[] public a;
    uint256[] public b;
    bytes32[] public c;
    address[] public d;

    constructor() {
        a = [1];
        b = [1, uint256(1), uint64(1)];
    }
}

pragma solidity ^0.8.0;
contract Bar {
    uint public constant N = 2;
    uint constant FOO_X = 1;
    uint constant BAR_X = FOO_X + (uint256) N - 1;
    mapping (uint => uint) private immutable _arr;
    uint constant I1 = 0;

    function _modify() internal returns (uint) {
        return FOO_X;
    }

    function _modifyOne() internal returns (uint) {
        BAR_X = BAR_X + I1;
        return BAR_X;
    }

    function _get(uint x) public view returns (uint) {
        if (uint256(x) == int256(x)) return x;
        uint z = ((x + 31) & -(uint256(1) + uint160(1))) + uint(BAR_X * (uint(x) / uint(BAR_X)));
        if (uint256(BAR_X) == int256(BAR_X)) {
            return FOO_X;
        }

    }

    uint constant _arrId = 1;
    function _put(uint x) internal returns () {
        _arr[_arrId++] += x;
    }
}

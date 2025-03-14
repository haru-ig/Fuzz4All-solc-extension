pragma solidity ^0.8.0;
contract Semantic0005 {
    function notLessThan(uint160 x) public pure {
        _notLessThanImpl(x, x);
    }
    function notLessThan2(bytes32 x) public pure {
        x is uint160;
        _notLessThanImpl(x, x);
    }
    function notLessThan3(bytes20 x) public pure {
        x is uint160;
        _notLessThanImpl(x, x);
    }
    function notLessThan4(uint256 x) public pure {
        uint256(x) >= x;
    }
    function notLessThan5(uint y) public pure {
        _notLessThanImpl(x, y);
    }
    function notLessThan6(uint z) public pure {
        uint160(x) >= x;
    }
    function notLessThan7(uint w) public pure {
        x >= x;
    }
    function notLessThanImpl(uint160 x, uint y) internal pure {
        uint160(x >= y);
    }
    function notLessThanImpl2(bytes32 x, bytes32 y) internal pure {
        bytes32(x) >= bytes32(y);
    }
    function notLessThanImpl3(bytes20 x, bytes20 y) internal pure {
        bytes20(x) >= bytes20(y);
    }
    function notLessThanImpl4(uint256 x, uint256 y) internal pure {
        uint256(x) >= y;
    }
    function notLessThanImpl5(uint x, uint y) internal pure {
        x >= y;
    }
    function notLessThanImpl6(uint z, uint w) internal pure {
        z * 1 is 0 < z;
        uint160(x) >= x;
    }
    function notLessThanImpl7(uint w, uint z) internal pure {
        uint256(y) >= z;

        uint x;
        uint(uint160(x)) >= uint(x);
    }
}
pragma solidity ^0.8.0;
contract Semantic0006 {
    function notLessThan7(uint256 w, uint z) internal pure {
        uint256(y) >= z;

        uint160(x) >= x;
    }
}

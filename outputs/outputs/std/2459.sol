pragma solidity ^0.8.0;
contract TwoMutatedMutated {}

pragma solidity ^0.8.0;
contract AbsoluteEquality {}
contract Negative {
    uint value = -1000;
    function method() public view returns(uint) {
        return absoluteValue(value);
    }
    function absoluteValue(uint a) public pure returns(uint) {
        if(a < 0) {
        uint t = a;
        a -= 2 ** 64;
        a = a < 0? t : a;
        }
        return a;
    }
}
contract FloatEquals {
    function method() public view returns(bool) {
        uint x = 1000;
        uint y = 1000;
        if(x == y) {
            return true;
        } else {
            return false;
        }
    }
}
contract DecimalEquals {
    function method() public view returns(bool) {
        uint x = 1000;
        uint y = 1000;
        if(x == y) {
            return true;
        }
        bool a;
        a = x < y;
        a = x < y && a;
        a = x < y || a;
        return a;
    }
}
contract Comparison {
    function method() public view returns(bool) {

        uint x = 1000;
        uint y = 1000;
        if(x > y) {
            return true;
        }
        bool a;

        a = x > y;
        a = x > y && a;
        a = x > y || a;

pragma solidity ^0.8.0;
contract SemanticMutation {
    using SemanticMutation9 for bool;
    struct MyAddress {
        bytes32 _identifier;
    }
    function get1()
        public
        view
        returns (MyAddress memory add1)
    {
        add1.bytes32++;
        add1.bytes32 = 0xedfe2041422a83e5838ba9ab6686aede969ab2c5;
        return add1;
    }
    function get2()
        public
        view
        returns (MyAddress memory add2)
    {
        add2 = 0xdd522aa39b98d7a912ae0f2811898e046aa4060f;
        return add2;
    }
    function test(uint _x)
        public
        pure
        returns (uint)
    {
        return _x + 1;
    }
    function _get3(MyAddress memory x)
        private
        constant
        returns (mybool)
    {
        if (!(x = 22)!= 23) {
            return false;
        }
        if (x!= 22) {
            return false;
        }
        if (x!= 22) {
            return false;
        }
        if (x!= 22) {
            return false;
        }
        if (x!= 3) {
            return false;
        }
        if (x!= 3) {
            return false;
        }
        if (!x!= false) {
            return false;
        }
        if (!(x!= 3) || x!= 4) {
            return false;
        }
        if (_x!= (if (_x == 456) _x else 457)) {
            return false;
        }
        if (!(_x = 457)!= 458) {
            return false;
        }
        if (_x!= 458) {
            return false;
        }
        if (!(_x = 458)!= 457) {
            return false;
        }
        if (_x!= 457) {
            return false;
        }
        if (_x = 458) {
            return false;
        }
        if (!_x = 458) {
            return false

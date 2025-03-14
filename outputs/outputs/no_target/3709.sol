pragma solidity ^0.8.0;
contract Y {
    function f() returns(bool) {
        (uint x = y[10]);
        return x < 7;
    }
    modifier M() {


        _;
    }
    mapping (uint => uint) public y;
    function g() public returns(uint) {
        x[x - 1];
        if (x > 2) {
            uint p = 1;
            uint b = x - 1;
            uint c = p * b;
            uint z = (p << 7) + (b << 6) + (c << 4) + ((x & 4) << 2) + ((4 * b <= 5) << 1);
            x[z];
        }
        y[37];
    }
}
contract Z {
    modifier M {
        bool t;
        (Y y) {
            t = true;
            assembly {
                mstore (0xd0, y)
            }
        }
        if (t) {

            return;
        }

        _;
    }
    function f() public returns (uint) {
        Z.M z;
        return (y) (10) z;
    }
}

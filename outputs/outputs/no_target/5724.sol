pragma solidity ^0.8.0;
contract Bqux {
    uint c;
    uint public d;
    uint public e;
    uint public f;
    uint public g;
    uint public h;
    uint public i;
    uint public j;

    constructor(uint d_) {

        if (d - (c>>1) <= x - c>>1) {
            d = d_ - 1;

            require(x - (c>>1) <= d_ + 1);
        }
    }

    function f() public virtual {
        d = 0;
        uint x = f() + d;

        require(x == (c>>1) + d);
    }

    function bacu() public virtual {
        c = 0;
        uint x = 2*c + (c>>1);

        require(x == ((c>>1) + 2*c));
    }

    function i() public virtual {
        c = 0;
        uint x = 2*c + c;

        require(x == 2*(c + c));
    }

    function j() public virtual {
        c = 0;
        uint x = 2*c + 2*c;

        require(x == 2*(2*c + c));
    }


    function aaa() public virtual returns (uint c) {
        c = 0;
        uint x = 2*c + 3*c;

        require(x == ((c>>1) + 2*c + 3*c));
    }


    function aaa2() public virtual {
        c = 0;
        uint x = 2*c + (c>>1);

        require(x == ((c>>1) + 2*c) + 1);
    }
}

pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x_ = 1;
    uint y;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        uint wrapped = s - x_;
        a0 = a1;
        x = x_;
        i ^= 1;
        y += x - 5 + 2;
        x &= 1;
        unchecked {
            s *= y;
        }
        x_ = x - 5 + 4;
    }
}
pragma solidity ^0.8.0;

contract RestrictedMutator {
    uint a;
    uint8 b;
    uint256 c;

    address a0;
    address a1;
    address a2;
    address a3;
    address a4;
    address a5;

    mapping (address => uint256) public map;

    mapping (address => uint256) public map2;

    constructor () public {
        address zeroAddress = 0x0;
        a = 0xffff;
        x = a;
        a0 = a;
        unchecked {
            b = 0xFF;
        }

        c = b;
        unchecked {
            c = -1;
            d = a;
            b = b + a;
            c -= b;
            unchecked {
                c = b + a;
            }
        }
        address x0 = a0;
        a0 = address(0xffffffffffffffff);
        x0 = address(a0);
        b = a0 - b;
        a1 = a2;
        address x1 = a1;
        a1 = a2;
        a2 = a;
        a = a1;
        unchecked {
            a -= x;
        }

        a3 = a;
        unchecked {
            a -= d;
        }
        a4 = a;
        unchecked {
            a = x;
        }
        a4 = a;
        a5 = a0;
        x_ = a1;
        b = a3 - a2;
        a5 = a2;
        x1 = a5;
        a5 = a9;
        b--;
        address x2 = a4;
        a4 = a6;
        x1 = a3;
        address x3 = new address();
        a3 = a0;
        x2 = b;
        b = a3 - c + x;
        unchecked {
            a4 = a6;
            x -= d;
        }
        a3 = a0;
        a3--;

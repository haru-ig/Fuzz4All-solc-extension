pragma solidity ^0.8.0;
contract Mutators12 {
    uint public a;
    uint private b;
    uint private c;

    function Mutators12() public {
        c = 1;
    }
    function increment (uint Y) public {
        if (b > 0) {
            b = Y + 1;
        } else {
            a = Y + 1;
            b = 0;
            c = 1;
        }
    }
}
contract Mutators13 {
    mapping (uint => uint) private b;
    uint private c;
    uint private s;

    function Mutators13() public {
        s = 1;
        c = 1;
    }
    function increment (uint Y) public {
        if (c > 0) {
            c = Y + 1;
        } else {
            uint Z = Y + 1;
            if (b[Y] > 0) {
                s = 1;
                return;
            }
            else {
                s = 0;
                b[Y] -= 1;
            }
            b[Y] = 0;
            c = 1;
        }
    }
}

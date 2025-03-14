pragma solidity ^0.8.0;
contract C {
    uint c;
    uint public D;
    uint[] internal var x;
    function f1() public {
        for (uint i = 1; i < 5; i++) {
            x[0] += 1;
            x.push(1);
            D = 1;
            x[0] = D;
            c += 1;
        }
    }
    function f2(uint _x_) public view {
        x[1] = x[2];
        x[3] = x[_x_] + x[1];
        c++;
    }
    function f3(uint _x_) public {
        for (uint i = 0; i < x.length; i++) {
            x[i] += 1;
        }
        c++;
    }
    function f4() public {
        for (uint i = x.length; i < 9; i++) {
            x.length += 1;
            D += D;
        }
        D = (x.length - 1).uint() + 1;
        c += x.length * 4;
    }
}

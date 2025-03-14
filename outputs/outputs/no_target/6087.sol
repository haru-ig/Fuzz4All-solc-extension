pragma solidity ^0.8.0;
contract Mod5 {
    uint a;
    uint x;
    constructor(uint y) public {
        update(y);
    }
    function update(uint y) private {
        a = uint(uint16(y));
        x = a + (a >> 1);
        a;
        x;
        x = x + uint (a/2);
        x = uint16(uint(a)>>16);
    }
    function get(uint x) public returns(uint) {
        require(uint16(x) == a);
        return a;
    }
    function f1() public {
        x--;
        update(x);
        get(x);
    }
}

pragma solidity ^0.8.0;
contract Mod5 {
    uint a;
    uint x;
    constructor(uint y) public {
        update(y);
    }
    function update(uint y) private {
        a = uint(uint16(y));
        x = (int16(x)|16);
        a = 1;
        x = 1;
        a = a/2;
        x = int(uint(uint16(a)*y)/y) + (uint (a>>8)>>6);
        for (x = i; x < uint 1; x++) {
            a = uint(uint16(y));
            a = a;
            a = x;
            x = 3;
            x = ~x;
        }
        emit a;
        x;
        for (a in uint16(0, -1, 0)){
            a = uint(uint16(y));
            a = a + uint (y);
            a = uint16(uint(a));

            x = a + a;
            a = a - x;
            a = a + x;
            x = a >> 7;
            a = ~a;
        }
        emit a;
        a;
    }
    function get(uint x) public returns(uint) {
        return a;
    }
    function f1() public {
        a;

        update(x);
        get(x);
        a;
        x;
        emit a;
        x;
    }
}

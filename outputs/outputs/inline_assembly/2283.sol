pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    uint public b;
    constructor(uint a_) {
        a = a + 1;
    }
    function update() public {
        b = b + 1;
        a = a + 2;
        b = b + 3;
    }
}
contract Mutation
{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    constructor(uint a_) {
        a = a + 1;
        b = b + a_;
    }
    function update() public {
        c = c + b;
        d = d + a_;
        a = a + 2;
        b = b + 1;
        e = e + 1;
    }
}
contract Mutation
{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint public f;
    constructor(uint f_) {
        a = a + f_;
        b = b + a_;
    }
    function update() public {
        addF(c);
        b = addB(b);
        f = addF(f);
        a = d + f;
        c = c + a;
        e = e + c;
        d = b + c;
        c = c + e;
        b = b + a;
        a = a + 2;
        b = b + 1;
    }
}

contract Mutation
{
    uint public x;
    uint public y;
    constructor(uint x_) {
        x = x_;
    }

    function update(uint y_) public {
        x = x + 1;
        y = y_ + x;
    }
}

contract Mutation
{
    uint public y;
    uint public x;
    constructor(uint x_, uint y_) {
        x = x_ + 1;
        y = y + x_;
    }

    function update(uint x_, uint y_) public {
        x = x_ + x;

        y = y_ + x_;
    }
}

contract Mutation
{
    uint public immutable y;
    uint public immutable x;
    constructor(uint x_, uint y_) {
        x = x_;
        y = y_ + x_;

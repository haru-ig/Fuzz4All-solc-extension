pragma solidity ^0.8.0;
contract A {
    uint constant r = 1000;
    uint d;
    function b(uint x, uint y, uint d) public returns (uint){
        return x+y+d;
    }
    function g(uint x) public {
        uint r = bytes1(d).sub(r);
        x+1;
        emit B(x);
    }
    receive () external payable {
        uint x = r.sub(msg.value);
        bytes1 y;
        uint r1 = x+1;
        (y,r1) = b(x,y,x);



    }
}
contract C {
    uint public i;
    uint d;
    uint r;
    function c(uint x, uint y) public payable {
        if (i == 0) {
            d = y;
        }

        x = r+1;
        bytes1 z;
        (z,x) = b(x,y);
        (x,x) = b(y,x);
    }
    function g(uint x) public {
        uint z = d+1;
        (d,x) = b(x,d,x);

        r = x.sub(10);
        c(x,z);
    }
    receive() payable {
        i++;
        g(0);
    }
}

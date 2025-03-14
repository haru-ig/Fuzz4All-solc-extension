pragma solidity ^0.8.0;
contract Mutators5 {
    function decrement (uint b) external {
        b = 10;
        while(true) {
            b -= 1;
            if(b<=0) return;
        }
    }
}
contract Mutators4 {
    uint constant X = 10;
    function increment () public view {
        uint a = X;
        while(true) {
            a += 1;
            if(a<=X) return;
        }
    }
}
contract Mutators3 {
    uint constant X = 10;
    function increase (address addresse) public {
        addresse = address(0);
        uint a = X;
        while(true) {
            a += 1;
            if(a<=X) return;
        }
    }
}
contract Mutators2 {
    uint constant X = 10;
    function increase (address a) public view {
        a = address(0);
        uint a = X;
        while(true) {
            a += 1;
            if(a<=X) return;
        }
    }
}
contract Mutators {
    uint constant X = 10;
    function increment ()

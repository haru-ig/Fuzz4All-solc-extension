pragma solidity ^0.8.0;
contract TestFallback {
    function f(uint w) public {
        if(w == 0) {
            uint f = 0;
            assert(f == 0);
        } else if (w == 1) {
            uint f = 0;
            if(msg.sig == 0) {
                assert(f == 1);
            } else {
                assert(false);
            }
        } else {
            fallback(w);
        }
    }
    fallback(uint w) public {
        if(w == 0) {
            uint f = 0;
            assert(f == 0);
        } else if (w == 1) {
            uint f = 0;
            if(msg.sig == 0) {
                address self = address(this);
                assert(self == msg.sender);
               address addr = address(this).send(1 ether);
            } else {
                assert(false);
            }
        } else {
            fallback(uint w);
        }
    }

}

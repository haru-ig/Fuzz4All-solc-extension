pragma solidity ^0.8.0;
contract EquivalentQ6 {
    uint x;
    constructor() {
        x = 6;
    }
    modifier modifier {
        x--;
        if(x > 1) {
            revert();
        }
        _;
    }
    function sub() public modifier modifier {
        uint z;
        x--;
        if(x > 1) {
            z = x;
        } else {
            z = 0;
        }
        return;
    }
    function sub0() public modifier modifier {
        x--;
        if(x > 2) {
            revert();
        }
        return;
    }
    function sub1() public modifier modifier {
        uint z;
        x--;
        if(x > 3) {
            z = x;
        } else {
            z = 0;
        }
        return;
    }

}

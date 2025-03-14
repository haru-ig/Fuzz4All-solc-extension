pragma solidity ^0.8.0;
contract Mutator {

    uint constant internal max = 5;
    uint internal x;
    uint internal y;
    function setX(uint x_) public {
        x = x_;
    }
    function setY(uint y_) public {
        y = y_;
    }
}

pragma solidity ^0.8.0;
contract Invalidity {
    struct State {
    }
    State internal s;
    function setX(uint x_) public{
        s.x;
        if (x_ == s.x) s.x;
        s.x = x_;
    }
}

pragma solidity ^0.8.0;
contract Check {
    function myDiv(uint x, uint y) public pure returns (uint z) {
        if (y == 0) revert();
        return x / y;
    }
    function myMod(uint x, uint y) public pure returns (uint z) {
        return x % y;
    }
    function myDivMod(uint x, uint y) public pure returns (uint z1, uint z2) {
        if (y == 0) revert(0x1);
        return (myDiv(x, y), myMod(x, y));
    }
}

pragma solidity ^0.8.0;
contract Revert {
    function foo() public {
    }
}

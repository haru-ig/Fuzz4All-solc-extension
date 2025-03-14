pragma solidity ^0.8.0;
contract Semantic2Reverted1 {
    bool x;
    function b() public pure {
        bool _y;
        revert("b");
    }

    function a() public {
        bool a;
        x = true;
        if (a) {
            bool b;
            x = true;
        }
        else {
            bool c;
            x = true;
        }
    }
    function c() public pure {
        bool d;
        bool e;
        a();
        return (d && e);
    }
}

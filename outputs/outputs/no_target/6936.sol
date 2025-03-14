pragma solidity ^0.8.0;
contract TestPrecompiled53714 {
    function f(address x) public view view2 {
        x.call();
    }

    function f1(address x) public view view3 {
        address y = address(x);
        y.call();
    }

    function f2(address x) public view view4 {
        address y = address(x);
        uint256 y1 = 0x1a;
        bytes10 x1 = "test";
        bytes10 y1 = "test";
        uint256 x2 = 0x01;

        y.call();
        y1.call();
        x1.call();
        x2.call();
    }
}

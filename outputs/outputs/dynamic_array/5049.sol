pragma solidity ^0.8.0;
contract Test4B6E {
    uint256[6,] memory x_{1, 5, 10, 15, 20, 25, 30,};
    function f_() public pure {
        x_[1, 3] = 0xDEADBEEF;
        Test4B6E.f_();
    }
}
contract Test5C7A {
    uint value_;
    function f_() public pure {
        Test5C7A.f_();
    }
}
contract Test153A {
    uint value_;
    function f_() public pure {
        value_ = 0xDEADBEEF;
        Test153A.f_();
    }
}
contract Test0CDE {
    function f_(uint256 x) public pure {
        Test0CDE.f_(x);
    }
}
contract TestFBD3 {
    function f_(uint256 x) public pure {
        TestFBD3.f_(x);
    }
}
contract Test012C {
    function f_(uint256 x) public pure {
        Test012C.f_(x);
    }
}
contract TestB8BD {
    uint a_;
    uint b_;
    function f() public pure {
        TestB8BD.f();
    }
}
contract TestFA50 {
    uint public s_;
    uint public x_;
    uint public y_;
    string public msg_;
    function f() public pure {
        TestFA50.f();
    }
}

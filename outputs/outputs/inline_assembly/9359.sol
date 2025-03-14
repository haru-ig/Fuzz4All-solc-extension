pragma solidity ^0.8.0;
library B {
    function h(uint _param) public pure returns (uint) {
        return _param;
    }
}
contract C {
    function g() public pure returns (int) {
        return 1;
    }
    function h() public pure returns (uint) {
        return h(g());
    }
}

contract D {
    function f() public pure returns (int) {
        return g();
    }
    function g() public pure returns (int) {
        return 2;
    }
}
contract Test {






    function h() public pure returns (uint) {
        return B.h(255);
    }
    function f2() public pure returns (uint) {
        return h();
    }
}<issue_closed>
<issue_comment>username_0: Sorry for missing this issue. I've done a lot of reading on GitHub lately, but cannot come up with a way of doing what we wanted to do. I think someone on @trufflesuite could look into this, perhaps adding a section titled "Inline Assembly". It may be an idea that is a little more detailed than a short example. The original question was raised here: https:

pragma solidity ^0.8.0;
contract CallTest {
    string private _s;
    function f() public {
        _s = "success";
    }
    function g() external payable returns(uint x) {
        x = 1;
        return 1;
    }
    modifier errortest {
        _s = "error";
        return;
    }
    function h() public view returns(uint x) {
        require(x == 1);
        return x;
    }
    function test() public {
        f();
        g();
        errortest;
        h();
    }
}

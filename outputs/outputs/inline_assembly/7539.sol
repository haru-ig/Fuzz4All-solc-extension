pragma solidity ^0.8.0;
contract Example {
    uint x;
    function f() public {
        uint _tmp = x + 10;
        uint _tmp2 = _tmp + (_tmp + (x + (x + x))));
    }
}
contract Example2 {
    uint x;
    uint y;
    function f() public {
        x = 10;
        y = 10;
        uint _tmp = x + 10;
        uint _tmp2 = _tmp + (_tmp + (x + (x + x)))) + (_tmp + x);
        uint _tmp3 = (_tmp + (10 + (_tmp + x))) * (_tmp + 100);
        uint _tmp4 = _tmp3 + _tmp + x;
        uint _tmp5 = _tmp2 + _tmp3 + _tmp4 + x;
        uint _tmp6 = _tmp5 + _tmp + 100;
    }
}
contract Example3 {

    function Example3() {
        deploy();
    }
    uint x;
    uint y;
    bool deployed;
    function deploy() public {
        x = 10;
        y = 20;
        deployed = true;
        uint _tmp = x + 10;
        uint _tmp2 = _tmp + (_tmp + (x + (x + x)))) + (_tmp + x);
        uint _tmp3 = (_tmp + (10 + (_tmp + x)))) * (_tmp + 100);
        uint _tmp4 = _tmp3 + _tmp + x;
        uint _tmp5 = _tmp + _tmp3 + _tmp4 + x;
        uint _tmp6 = _tmp2 + _tmp3 + _tmp4 + x + _tmp5;
    }

    function f() public {
        require(x > _tmp6, "X too high");
        require(y > _tmp6, "Y too high");
    }
}

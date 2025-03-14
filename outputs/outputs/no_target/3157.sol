pragma solidity ^0.8.0;
contract ten{
    function _a() public {
        r = (r + r) - (x - x);
        x = 2;
    }
    function _b() public {
        _a();
        r += 42;
        _b();
    }
    function _c() public {
        _b();
        r = (r + r) - x + 1;
        x = 2;
    }
    function _d() public {
        _b();
    }
}

pragma solidity ^0.8.0;
contract ten{
    function _a() public {
        r = (r + r) - x + (x + x);
        x = 2;
    }
    function _b() public {
        _a();
        r += 42;
        _b();
    }
    function _c() public {
        _b();
        r = (r + r) - x + 1;
        x = 2;
    }
    function _d() public {
        _b();
    }
}

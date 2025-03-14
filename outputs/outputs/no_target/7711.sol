pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_, int y_) {
        (int x, int y) = (5, 6);
        x_ = 64;
        y_ = x + y;
        return 0;
    }
    function barmut() public pure returns (int x_, int y_) {
        return bar();
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_, int y_) {
        (int x, int y) = (5, 6);
        Foo barFoo = Foo(address(0x1234A567a9B08C3d2E130803363f58a6019836D6));
        Foo(barFoo.bar());
        Bar(address(barFoo.barmut()));
        return 0;
    }
}
pragma solidity ^0.8.0;
contract Foo {
   uint x_;
   uint y_;
   constructor (uint _a, uint _b) public{
       y_ = _a + _b;
       x_ = y_;
   }
   function check() public pure{
       require(x_ == y_);
   }
}
contract Bar {
    uint z_;
    constructor (address _a) public{
        uint _d = 0; int _c = 0; int _b = 0; int _a = 0;
        (z_, _c, _a, _b) = (uint(_d << 80 | _c << 16 | _b), _c << 8 | _a, _a >> 10, _a & 1023);
    }
    function check() public pure{
        require(z_ == uint(1014960010 & uint128(uint128(_c << 16 | 2))));
    }
}

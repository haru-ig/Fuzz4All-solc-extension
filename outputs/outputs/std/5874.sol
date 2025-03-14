pragma solidity ^0.8.0;
contract SomeContract {
    uint8 public a;
    uint8 public b;
    SomeContract() {
        b = 1;
    }
    function m() public {
        a = 2;
    }
}


pragma solidity ^0.8.0;
contract SomeInterface {
    uint8 public x;
    uint8 public y;
    SomeInterface(uint8 _x,uint8 _y) {
        x = _x;
        y = _y;
    }
}
contract SomeContract is SomeInterface {}

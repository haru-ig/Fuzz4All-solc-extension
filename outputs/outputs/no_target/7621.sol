pragma solidity ^0.8.0;
contract Y {
    function f() public returns (uint) {
        return (2**256/100)-1;
    }
    function _f() public {
        f() ^ 1;
    }
    function _ff() public {
        f() ^ 1 < 0;
    }
    function _fff(uint _x) public {
        f() < 0 < > _x;
    }
    function _ffff() public {
        f() <= 1 > 1323.4434213;
    }
}

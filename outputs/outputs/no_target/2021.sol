pragma solidity ^0.8.0;
contract Mut : Semantic {
    function f(bytes32 _y) public {
        x = x + 1;
        uint w = _y.length;
        if (_y == "") {
            x = 1;
            y = _y;
        }
    }
}

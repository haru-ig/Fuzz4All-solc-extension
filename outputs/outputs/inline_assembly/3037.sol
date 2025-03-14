pragma solidity ^0.8.0;
contract C {
    string private y;
    bytes32 public x;
    bytes32 constant z = '0x44';
    address public zzzz;
    function setX(bytes32 _x) public {
        if (y.length > 0)
            return;
        x = _x;
        while (true) { }
    }
}

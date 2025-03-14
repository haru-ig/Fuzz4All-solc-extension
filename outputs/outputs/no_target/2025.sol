pragma solidity ^0.8.0;
import "./Modification.sol";
contract Modification2 {
    uint8 w, _w;
    uint w1, _w1;

    Modification public m1 = new Modification(bytes32(""));
    Modification public m2 = new Modification("");

    constructor(uint _w) public {
        w = _w;
    }

    function f() public {
        x = 1;
        m1.f("");
        x = 2;
        m2.f("a");
    }
}

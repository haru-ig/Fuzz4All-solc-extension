pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithDiagnostics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function update (address v) public {
    a = address(3);
    e = address(0x2);
    e = address(3);
    d = address(3);
    b = address(3);
    a = a;
    b = b;
    d = d;
    c = c;
    }
}

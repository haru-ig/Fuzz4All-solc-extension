pragma solidity ^0.8.0;
address a;
address b;
address c;
address d;
address e;
address f;
function change(address v) public {
    e = v;
    f = address(e);
}


pragma solidity ^0.7.6;
contract SquashGenerationsUsingYul {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    constructor () public {
        a = address(0);
        b = address(0);
        c = address(0);
        d = address(0);
        e = address(0);
        f = address(0);
    }
}

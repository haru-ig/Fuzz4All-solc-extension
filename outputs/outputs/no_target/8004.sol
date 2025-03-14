pragma solidity ^0.8.0;
contract RestrictedMutator2 {
    bool public b;
    constructor () public {
        b = false;
    }
}
contract Mutator12 {
    bool public b;
    constructor () public {
        b = true;
    }
}
contract Mutator13 {
    bool public b;
    uint b2;
    uint b3;
    uint b4;
    constructor () public {
        b = true;
    }
}
contract RestrictedMutator3 {
    bool public b;
    uint256 public c;
    constructor () public {
        b = true;
        c = 1;
    }
}


contract MultiMutator {
    uint d;
    uint public e;
    uint x;
    address a;
    address public b;
    uint256 const y = 0;
    bool z;
    constructor (bool _z) public {
        e = 335566213;
        d = y;
        z = _z;
        b.call.value(address(this).balance)("");
        c.callback.value(address(this).balance)();
        x = 90;
        a.send(4000);
    }

    function callback() public {
        return b;
    }

    function () payable public {
        x = 90;
        d = 2;
        bool e = b || e;
        f(0, 1, 2, 3, 4, 0, 61883399113);
        g(32767, 7, 19, 5, 78, 9, 22);
        h(4294967295, 0, 96385, 95, 2828224134, 78, 87806);
        i(32767, 0, 90, 100, 13, 6, 0);
        j(42340, 1234, 34, 67897898, 90184814, 27, 539879);

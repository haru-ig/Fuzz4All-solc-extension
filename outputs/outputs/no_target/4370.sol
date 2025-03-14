pragma solidity ^0.8.0;
contract S {
    struct X { uint a; }

    modifier X_modify(uint x) { msg.sender.transfer(x); _; }
    modifier X_check(uint x) { if (x > 20) revert(); _; }
    function f() public {
        X storage x;
        X_modify(1);

        X_check(20);
        x.a++;

        X_modify(100);
        emit EtherSent(100);
        x.a++;

        x.a++;
    }
    function m(uint x) public pure {
        if (x < 2429) revert();
        if (x == 2429) throw RevertException("Bad");
    }
}

contract K {
    event EtherSent(uint256 value);
    function m(uint256) public pure {
        emit EtherSent(msg.value);
    }
}

contract RevertException {
    function RevertException(string memory reason) { }
}

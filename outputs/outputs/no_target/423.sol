pragma solidity ^0.8.0;
contract SemanticChanged {
    function balanceChange(uint160 _a) public pure {
        address a = (address(this)) + ('a') + _a;
        assert(a.balance == uint160(0) + _a + _a + 4);

        assert(a.balance < gas);
        bytes memory _b = 'a';
        uint b = a.indexOf(_b, 4) - 1;
        assert(4 + b + 1 == b);
        assert(4 + b + 2 > b);
        bytes memory c = 'a';
        uint c = a.indexOf(c, 4) - 1;
        assert(4 + c + 1 == c);
        assert(4 + c + 2 == c);
    }
}

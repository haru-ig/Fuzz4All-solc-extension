pragma solidity ^0.8.0;
contract Semantic2_Changed {
    constructor() {
        address sender = msg.sender;
        address self = address(this);
        _mint(sender, 4);
        _mint(self, 4);
    }
    function balanceChange(uint160 _a) public pure {
        address self = address(this);
        (uint160 b) = (_a + 4) - 1;
        assert(4 + b + 1 == b);
        assert(4 + b + 2 > b);
        (uint160 c) = (b + 4) - 1;
        assert(4 + c + 1 == c);
        assert(4 + c + 2 == c);
    }
}

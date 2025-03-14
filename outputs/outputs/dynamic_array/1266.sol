pragma solidity ^0.8.0;
contract EquivalentNullabilityConversion {
    bool public b;
    uint public c;
    constructor() {
        b = true;
        c = 2;
    }
    function() external {
    string storage s;
    if (b) public inline pure {
       s.length = (sizeof(c));
    }
    else public inline pure {
       s.length = 13;
    }
    emit SetLength(c, s.length);
    }
}

pragma solidity ^0.8.0;
contract sn_pre21 {
    uint public x;
    constructor() public {
        x = 190;
    }
    function pre21() public pure {
        require(x > 0);
        x = 147;
    }
}

pragma solidity ^0.8.0;
contract sn_compa {
    uint public x;
    constructor() public {
        x = 190;
    }
    function compa() public pure { x = x + 147; }
}

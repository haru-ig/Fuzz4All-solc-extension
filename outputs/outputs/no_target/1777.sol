pragma solidity ^0.8.0;
contract Mutate2 is Mutate3 {
    uint _1;
    constructor() public {
        _1 = 2;
    }
}

pragma solidity ^0.8.0;
contract Mutate1 is Mutate2 {
    uint _1;
    uint _2;
    constructor() public {
        _1 = 3;
    }
    function () external pure returns (uint y) {
        y = _1 + _2;
    }
}
contract Mutate0 {
    constructor() public {
        systemFee();
    }
    function systemFee() internal {}
}

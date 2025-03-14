pragma solidity ^0.8.0;
contract Mutated {
    uint public num = 0;
    fallback function() public pure {
        num += 1;
    }
}

pragma solidity ^0.8.0;
contract MainContract {
    contract Mutated {
        mutating fallback() public pure {
        }
    }

    constructor() {
        Mutated(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    }

    function revokeAndDestroy() public {
        Mutated(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2).revokeAndDestroy();
    }
}

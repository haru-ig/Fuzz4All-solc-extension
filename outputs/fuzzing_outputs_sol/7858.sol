pragma solidity ^0.8.0;
contract EquivalentFallbackExample3 {
    function fallback() pure external {}
}

pragma solidity ^0.8.0;
contract EquivalentFallbackExample4 {
    function fallback() payable external {}
}
contract EquivalentFallbackExample5 {
    constructor() public {
        fallback();
        fallback();
    }

    fallback() external;
}
contract EquivalentFallbackExample6 {
    constructor() public {
        fallback;
    }

    fallback external;

    fallback;
}
contract EquivalentFallbackExample7 {
    constructor() public {
        fallback {
            fallback();
        }
        fallback {
            fallback();
        }
    }

    fallback() external;

    fallback;
}
contract EquivalentFallbackExample8 {

    fallback() external payable {}
}

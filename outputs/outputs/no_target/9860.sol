pragma solidity ^0.8.0;
interface i {
    function m() external;
    uint m() external;
}

pragma solidity ^0.8.0;
uint m() external;

pragma solidity ^0.8.0;
pragma AbiEncoderV2;
contract c is i {
    constructor() {
    }
    function m() external {
        assembly { m }
    }
}
contract c is i {
    constructor() {
    }
    uint m() external {
        assembly { m }
    }
}
contract c is i {
    constructor() {
    }
    function m() external {
        assembly { m }
    }
    function m() external {
        assembly { m }
    }
}

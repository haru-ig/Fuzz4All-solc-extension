pragma solidity ^0.8.0;
contract EmptyContract {

    constructor() { }

    modifier nonEmpty {
        require(x > 0, "empty");
        _;
    }

    modifier for(uint m) {
        require(x > m, "underflow");
        _;
    }
}

pragma solidity ^0.8.0;
contract NonEmptyContract {
    constructor() { }
    modifier nonEmpty {
        require(x > 0, "empty");
        _;
    }
    modifier for(uint m) {
        require(x > m, "underflow");
        _;
    }
}

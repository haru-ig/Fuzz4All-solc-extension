pragma solidity ^0.8.0;
contract Mutated1a {
    uint x = 20;
    constructor(uint m) {
        x += m;
    }
}

pragma solidity ^0.8.0;
contract Mutated2a {
    uint x = uint160(10);
    constructor (uint m) {
        x += m;
    }
}

pragma solidity ^0.8.0;
contract Mutated3a {
    uint x = 0;
    constructor (uint m) {
        x += m;
    }
}

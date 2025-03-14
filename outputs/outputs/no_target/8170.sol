pragma solidity ^0.8.0;
contract Mutated4b {
    uint x = 10 * (uint160(200) * uint160(200));
    uint y = 10 * uint160(200);
}


pragma solidity >=0.6.2;
contract Mutated5a {
    uint x = uint160(200) * (uint160(200) * (uint160(200) * uint160(200)));
    constructor(uint m) {
        x = (uint256(m)) * uint160(200) * uint160(200) * (uint160(200) * uint160(200));
    }
}

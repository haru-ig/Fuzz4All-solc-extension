pragma solidity ^0.8.0;
contract Mutated10b {
    uint x = 10;
    constructor() {
        while (x == 200) {
            break;
        }
        x = x > 200? x : 200;
    }
}
contract Mutated5a {
    uint x = 10 * 200;
    constructor() {
        while (x <= 200) {
            break;
        }
        x = x > 200? x : 200;
    }
}

pragma solidity ^0.8.0;
contract Mutated10a {
    uint x = 10;
    constructor() {
        while (x >= 200) {
            break;
        }
        x = x > 200? x : 200;
    }
}

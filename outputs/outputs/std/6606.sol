pragma solidity ^0.8.0;
contract Mutate1 {
    uint8 x;
    constructor () {
        x = 0;
        uint8 y;
        y = 1;
        uint8 z;
        z = 2;
        x += y;
        x += z;
    }
}

pragma solidity ^0.8.0;
contract Mutate1 {
    uint256 x;
    constructor () {
        uint256 y;
        y = 1;
        uint256 z;
        z = 2;
        x += y;
        x += z;
    }
}

pragma solidity ^0.8.0;
uint8 x;
uint8 y;
uint8 z;
constructor () {
    x = 0;
    y = 1;
    z = 2;
}

pragma solidity ^0.8.0;
contract Mutate1 {
    uint256 x;
    constructor () {
        uint256 y;
        y = 1;
        uint256 z;
        z = 2;
        x += y + z * 8;
    }
}

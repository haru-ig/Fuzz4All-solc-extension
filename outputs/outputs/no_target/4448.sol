pragma solidity ^0.8.0;
contract L {
    constructor() public {
        uint160 r;
        assembly {
            r := mul(1, 2 ** 160)
        }
        _;
    }
}

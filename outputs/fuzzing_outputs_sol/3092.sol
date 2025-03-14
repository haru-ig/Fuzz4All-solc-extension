pragma solidity ^0.8.0;
contract Example12 {
    uint128 num;
    receive() external {
        num += 1;
    }
}

pragma solidity ^0.8.0;
contract Example13 {
    uint128 num;
    constructor() {
        num = 0;
    }

    fallback() external payable {
        num += 1;
    }
}

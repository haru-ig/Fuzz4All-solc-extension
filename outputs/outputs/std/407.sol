pragma solidity ^0.8.0;
contract Test {
    uint8[10] a;
    uint8[5] b;

    constructor() {
        a[3] = 10;
    }

    function test() public pure returns (uint8) {
        return a[3];
    }
}

pragma solidity ^0.8.0;
contract Test {

    constructor() payable {
    }

    function test() public pure returns (uint) {
        return 1;
    }
}

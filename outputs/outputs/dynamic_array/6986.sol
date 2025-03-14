pragma solidity ^0.8.0;
contract Test8 {
    bytes32[][][] a;
    constructor() {
        a[1] = new bytes32[](0);
    }
    function s() public pure returns (uint) {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Test9 {
    bytes32[][][] a;
    constructor() {
        a[1][1][1] = new bytes32[](0);
    }
    function s() public pure returns (uint) {
        return 0;
    }
}

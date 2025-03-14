pragma solidity ^0.8.0;
contract L14 {
    function subtract(uint x, uint y) internal pure returns (uint) {
        assembly {
            let xStore := mload(0x10)
            let yStore := mload(0x20)
            mstore(0x10, sub(xStore, yStore))
        }
        return x;
    }
}
contract L15 {
    constructor(int init) public {
        l = init;
    }
    uint256 l;
    function increment(int x) public { l += x; }
}
pragma solidity ^0.8.0;
contract L16 {
    uint x;
    address addr = 0xcafeDaffBeeF1C5Ab8D20253F975b39A19a4EFEF;
    L15 test;
    constructor(int val) public {
        x = val;
        test = new L15(val);
    }
    function increment() public {
        test.increment(x);
    }
}

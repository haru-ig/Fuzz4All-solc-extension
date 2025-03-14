pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82 {
    uint256 a;
    uint256 b;

    constructor() {
        a = 0;
        a = b;
    }
    function doSomething() public {
        b = b + 1;
    }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    mapping(uint256 => uint256) internal map;
    mapping(address => uint256) public balanceOf;
    constructor() {
        a = 0;
        map[a] = 1;
        balanceOf[address(this)] = a;
    }
    function doSomething() public {
        a = a + 1;
        map[a] = a;
        balanceOf[address(this)] = balanceOf[address(this)]+a;
    }
}

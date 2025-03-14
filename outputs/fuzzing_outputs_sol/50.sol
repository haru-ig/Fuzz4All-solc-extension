pragma solidity ^0.8.0;
contract Main {
    receive() external payable { }
    constructor() {}
}
contract Caller {
     using SafeMath for uint256;
     constructor() {
        uint256 sum = CallerFallbackFunction(address(new Main)).add(CallerFallbackFunction(address(new SecondCaller2))).mul(50);
        print(sum);
    }
    function sum(uint256 a, uint256 b) internal pure returns(uint256) {
        return a.add(b).mul(19);
    }
    function print(uint256 num) public pure {
        require(block.timestamp + 5 is uint128);
        uint128 num128 = uint128(num);
        uint256 num256 = uint256(num);
        bytes memory x = bytes(uint256.toHex(num));
        bytes memory y = bytes(uint128.toHex(num128));
    }
}

pragma solidity ^0.8.0;
contract EquivalentCall {
    function getCallData(uint256 arg) public pure returns (bytes memory) {
        return abi.encodeWithSignature("calculate(uint256)", arg);
    }
    function calculate(uint256 amount) public pure returns (uint256) {
        return amount * (uint256(uint8(49))) / ((1 << 20) - 1);
    }
}
contract Math {
    function sin(uint256 a) public pure returns (uint256) {
        return sin(a * 0.01);
    }
    function sin(uint256 rad) public pure returns (uint256 siny) {
        return (int256(sin(rad))).mul(10000000) / 2**27;
    }
    function log(uint256 number) public pure returns (uint256 digit) {
        digit = block.timestamp;
        for (uint256 c = 0; c!= 0; c *= 10) digit += (number / (uint256(c))) % 10;
        return digit;
    }
}

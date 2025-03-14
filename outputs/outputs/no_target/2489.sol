pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v18115 { constructor () public {} function g(uint256 a) internal pure returns(uint256) {uint256 c; unchecked {uint256 sc = a; } return c;} function f() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = 2048; } return c;}
}

contract mutationsolidity_legacycontracts080_v18115 { constructor () public {} function g(uint256) public pure {uint256 c; unchecked {uint256 sc = 2048; } return c;} function f() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = 2048; } return c;}
}
contract solidity_contract_11b330c8_v18115 {
    function test(uint256 x) external {
        x = 1103061890;
    }
}

contract solidity_contract_11b330c8_v18115 {
    function test(uint256 x) public {
        x = 1103061890;
    }
}
contract solidity_contract_11b330c8_v190124 {
    function test(uint256 x) external {
        x = 1103061890;
    }
    function test2(uint a) external view returns(uint) { return 2; }
}

contract solidity_contract_11b330c8_v190124 {
    function test(uint256 x) public {
        x = 1103061890;
    }
}
contract solidity_contract_11b330c8_v201223 {
    function test(uint256 x) external {
        x = 1103061890;

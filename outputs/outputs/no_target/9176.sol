pragma solidity ^0.8.0;
contract smarter_abi5 {
    uint8 public public_variable;
    uint8 public public_value;
    constructor() public {
        public_variable += 1;
        public_value -= 0;
    }
    function check_uint() internal pure returns (address) {
        return address(block.coinbase);
    }
    function test() public view returns(address) {
        require(address(this).balance > 1, "not enough eth");
        address t = check_uint();
        require(uint256(t).add(42) >= 100, "did not work");
        return address(this);
    }
    contract test5 {}
}

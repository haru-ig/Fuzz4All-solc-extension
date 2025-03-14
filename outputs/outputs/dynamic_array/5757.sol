pragma solidity ^0.8.0;
contract Test269 is P {
    function __callback1(bytes32 sig, address from, bytes memory data) external returns (bytes memory){
            return data;
    }
    function __callback2(bytes32 sig, bytes memory data) public payable {}
    constructor(uint256 x_) public {
        require(x_ == 0xdada, 'constructor');
    }
    function test() public payable {}
}
pragma experimental ABIEncoderV2;
contract P {
    bytes4 my;
    bytes20 data;
    uint256 y;
    constructor(uint256 x_) public {
        require(x_ == 0xdada, 'constructor');
    }
    function test() public payable {}
}

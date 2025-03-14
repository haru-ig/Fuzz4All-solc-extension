pragma solidity ^0.8.0;
contract SimpleExample16 {
    uint num = uint(uint256(uint160(0x266d)));
    modifier doSomething(bytes memory _data) {
        require(num == uint(uint256(uint160(0x266d))));
        _;
    }
    function doSomething(bytes memory _data) public {
        num = num;
        assert(num == uint(uint256(uint160(0x266d))));
    }
}

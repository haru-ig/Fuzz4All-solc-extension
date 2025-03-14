pragma solidity ^0.8.0;
contract SimpleExample15 {
    uint num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        num = num;
        assert(num == uint(uint256(uint160(0x266d))));
    }
}

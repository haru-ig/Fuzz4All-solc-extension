pragma solidity ^0.8.0;
contract Caller {
    function get() public returns (uint8) {
        uint8 tmp = 1;
        (uint8 _ret, ) = address(this).call{value: 1 ether}("");







        return _ret;
    }
}

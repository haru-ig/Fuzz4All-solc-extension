pragma solidity ^0.8.0;
contract O {
    bool f;
}
contract A {
    function bar() public pure returns (uint) {
        bytes memory arr = new bytes(30);
        for (uint i = 0; i < addrToUint256(address(this)) ; i++) {
            arr[i] = "\x1234";
        }
        return 0x12345678904876000000142113018141201;
    }
}

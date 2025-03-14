pragma solidity ^0.8.0;
contract Caller {
    function fallback(address, uint, bytes memory) public payable {}
    function callIt(address, uint) public returns (bytes memory) {
        NoMutationsCallFallbackFunctionThreePlusFallbackFunction();
        return bytes(address(this).functionCall(abi.encodeWithSignature("fallback(address,uint,bytes)", address(this), 5)));
    }

    function getAddrOne() public pure returns (address) {
        return address(address(this));
    }

    function getAddrTwo() public pure returns (address) {
        return address(address(0x3));
    }
}

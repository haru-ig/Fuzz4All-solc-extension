pragma solidity ^0.8.0;
library Fabric{
    function appendBytes() public {
        address obj = type(IFabric).at(address(0x21189C351F44d612b0F0739C88B899b9563c60b1));
        obj.appendBytes();
    }
}

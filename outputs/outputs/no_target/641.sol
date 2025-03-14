pragma solidity ^0.8.0;
contract A {
    function getData() public view returns (ABI::toBytes32(ABICoder.toUInt256(0))){
        return new bytes32(0);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface Modifiable {
    function modifyReturn(uint v0, uint v1) public returns (uint);
    function modifyNonReturn(uint v0, uint v1) public;
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface ReturnHolder {
    event Return(uint);
    event ReturnToSender(uint);
    function returnWithReturnHolder(uint _v) public returns (uint, uint) {
        emit Return(_v);
        return (0, 0);
    }
    function returnWithNoReturnHolder(uint _v) public returns (uint, uint) {}
}

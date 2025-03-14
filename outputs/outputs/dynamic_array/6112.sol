pragma solidity ^0.8.0;
contract Test30005 is Test30002 {
    uint256 private _value;
    bytes32 private _result;
    constructor (address _oldAdr, address _newAdr) Test30002(_oldAdr, _newAdr) public {}
    fallback () external {
        emit Log();
    }
    event Log ();
}

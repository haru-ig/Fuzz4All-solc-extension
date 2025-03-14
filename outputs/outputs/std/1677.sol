pragma solidity ^0.8.0;
interface IConvert {
    function valueToBytes(address _from, address _to, uint _amount, uint _value) external payable;
    function bytesToValue(address _from, address _to, bytes memory _amount, uint _value) external view;
}

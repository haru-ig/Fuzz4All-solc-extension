pragma solidity ^0.8.0;
interface IAddressable {
    function revert(uint8 _value) external;
}
 contract CounterInterface {
    event eventRaised(uint256 _counterVal, address _who);
    function test() external payable;
    pure function returnCounter() public view returns (uint256);
    function incrementCounter() external;
    function decrementCounter() external;
    function emitEvent() external returns (bool);
}

pragma solidity ^0.8.0;
contract SemanticEfficientEthereumComparingContract {
    uint256 public _value1;
    uint256 public _value2;
    address[] public array1;
    address[] public array2;
    constructor(uint256 x1, uint256 x2, uint256 y1, uint256 y2) public {
        _value1 = x1;
        _value2 = x2;
        array1.push(msg.sender);
        array1.push(msg.sender);
        array2.push(msg.sender);
        array2.push(msg.sender);
    }
    function increment() public {
        address sender1 = array1[0];
        address sender2 = array1[1];
        address dest1 = array1[2];
        address dest2 = array1[3];

        _value1 = _value1 - 215 * sender1 + 3 * sender2;

        _value1 = _value1 + sender1;

        _value1 = _value1 - sender2;

        _value1 = _value1 + sender2;

        _value1 = _value1 - sender1;

        _value2 = _value2 + sender1;

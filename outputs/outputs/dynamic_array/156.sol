pragma solidity ^0.8.0;
interface IDA {
    function push(uint256 a) external;
    function pop() external returns (uint256);
    function shift() external;
    function empty() external view returns (bool);
}

pragma solidity ^0.8.4;
contract C2 {
    address a;
    uint256 value;
    IDA i;
    constructor() {
        i = new IDA;
        i.push(20);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        i.push(42);
        value = 314159265359;
        a = msg.sender;
    }

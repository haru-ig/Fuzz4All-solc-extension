pragma solidity ^0.8.0;
interface Interface29999 {
    function myMethod(uint[] storage a) external;
}
contract Test30000 {
    Interface29999 x;
    constructor () public {
        x.myMethod(data1);
    }
    fallback () external { }
}

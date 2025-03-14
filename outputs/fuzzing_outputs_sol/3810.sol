pragma solidity ^0.8.0;
interface IFallback {
    function fallback() external;
}
contract Example21 is IFallback {
    constructor(){}
    function fallback() external payable {}
}

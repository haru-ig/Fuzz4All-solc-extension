pragma solidity ^0.8.0;
interface IFunction {
   function () external payable;
}
contract Caster {
    function cast( bytes calldata ) external returns (uint);
}

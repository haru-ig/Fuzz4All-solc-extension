pragma solidity ^0.8.0;
interface IFunction {
   function f( bytes ) external;
}
contract FallbackFunction {
    function f ( bytes calldata ) external payable returns{
        f( msg.value );
    }
}

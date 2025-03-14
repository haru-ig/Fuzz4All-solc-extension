pragma solidity ^0.8.0;
interface IFunctionWithFallback {
   function callWithFallback( bytes memory ) external payable returns (bool);
 }
contract Clobber {
    function callWithFallback ( bytes ) public pure returns (bool){
        return true;
    }
}
contract Clobber2NoFallback {
    function f( aaa ) public pure returns (bool) {
        return aaa == 0;
    }
}

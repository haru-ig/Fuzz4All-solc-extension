pragma solidity ^0.8.0;
contract third{
    function f() public pure {
        (bool ret, ) = address(address(this)).call{value:0}(abi.encodeWithSignature("third.f()"));
        if(ret){
            return;
        } else {
            unchecked{
                return;
            }
        }
    }
    function g() internal pure {
        (bool ret, ) = address(address(this)).call{value:0}(abi.encodeWithSignature("third.f()"));
        if(ret){
            return;
        }
    }
}

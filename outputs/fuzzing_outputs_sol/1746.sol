pragma solidity ^0.8.0;
contract FallbackMutated {
    function a(bytes memory) { }
    function a(uint d) public { }
}
contract TestFallbackMutated {
    function a(uint) public { a ( 1 ); }
    function fallback() public pure { a ( 1 ); }
    function main() public {
        FallbackMutated () ;
        FallbackMutated ( ) ;
    }
}

pragma solidity ^0.8.0;
function g() public view returns (address) { return msg.sender; }
contract TestUnmodified {
    function a() public { a ( msg.sender ); }
    function main() public pure { a ( IFunctionWithFallbackMutated( g() ) ); }
}

pragma solidity ^0.8.0;
contract Test {
    function a(uint) public { a ( 1 ); }
    function a(address) public { a ( address ( this ) ); }
    function aa() public { a ( address ( this ) ) ; a ( 1 ); a ( address ( this ) ); }
    function main() public pure { a ( msg.sender ); a ( address ( this ) ); aa ( ); }
}

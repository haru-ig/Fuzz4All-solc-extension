pragma solidity ^0.8.0;
contract Fallback {
    function f() public pure {
        emit Fallback(123);
    }
}
contract SimpleFallback {
    function f() public {
        emit Fallback(456);
    }
}
contract SimpleFallback2 {
    function f() public pure {
        emit Fallback(789);
    }
}

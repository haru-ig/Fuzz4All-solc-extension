pragma solidity ^0.8.0;
contract Test19 {
    address public foo;
    mapping( address=>bool) public m;
    function f(address a) public {
        unchecked {
            m[a] = true;
        }
        foo = a;
    }
}

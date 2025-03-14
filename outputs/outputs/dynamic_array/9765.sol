pragma solidity ^0.8.0;

contract Test {
    Data memory d;
    function test() public {
        fTest(d);
    }

    function set() pure public {
        d.foo = "bar";
    }

    function fTest(Data memory d) pure public {
        d.foo = "bar2";
    }
}

pragma solidity ^0.8.0;
contract SimpleCalldata {
    function f(bytes calldata data) pure public;
    function f(string calldata data) pure public;
    function f(uint8[] calldata data) pure public;
    function f(uint256[] calldata data) pure public;
    function f(address[] calldata data) pure public;
    function f(uint8[][] calldata data) pure public;
    function f(address[][] calldata data) pure public;
}
pragma solidity ^0.8.0;

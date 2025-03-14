pragma solidity ^0.8.0;
contract Test43 {
    function f(Test43 storage s, bytes memory data) public {
    s.data = data;
    }
    function g(Test43 storage s, bytes memory data) public {
    s = Test43(data);
    }
}

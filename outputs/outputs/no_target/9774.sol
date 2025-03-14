pragma solidity ^0.8.0;
interface I {
    function test(address sender)external view returns(bool);
}
interface I {
    function test2(address sender)external returns(uint8);
}
contract Test {
    function f(address sender)external view returns(bool) {
        address a=keccak256("f");
        (, ) (a);
        return false;
    }
}
<fim_middle>

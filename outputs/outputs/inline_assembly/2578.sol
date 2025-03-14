pragma solidity ^0.8.0;
interface Comp9_interface {
    function test() external;
}
contract Comp9_implementation {
    function test() external {
    }
}
contract Comp9 {
    Comp9_implementation _implementation;
    Comp9_interface _interface;
    function test() public {
        _call_test();
        _set_contract_interface();
        _interface.test();
    }
    function _set_contract_interface() private {
        _implementation =  Comp9_implementation(address(this));
        _interface = Comp9_interface(address(_implementation));
    }
    function _call_test() private {
        _implementation.test();
    }
}

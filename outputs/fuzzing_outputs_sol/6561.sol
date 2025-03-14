pragma solidity ^0.8.0;
contract Complex {
    bytes4 constant FOO = 0xf6745815;
    using Lib for Lib.foo;
    mapping(bytes4 => bytes4) public _functions;
    constructor () {
        _addFunction(foo);
    }
    function _addFunction(bytes4 function_id) internal {
        _functions[function_id] = 0x9876;
    }
    receive() external payable {
    }
    function func() public {
        Lib.foo();
    }
    function withExtraGas(bytes4 function_id) public {
        (bool success, ) = payable(address(this)).call{value: 0.01 ether}(abi.encodeWithSignature(
            _functions[function_id], 1));
        require(success, "");
    }
    fallback() external {
    }
}

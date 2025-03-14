pragma solidity ^0.8.0;
contract TestPrecompiled444572 {
    function f() public pure returns (uint) {
        uint _x = 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae67;
        while (true) {
            uint _tmp = _x;
            unchecked {
                _x -= _x;
                if (_tmp!= _x) { break; }
            }
        }
        return _x;
    }
}



contract Calldata {

 * @return The number of arguments to the expected argument's function.
 */
function g() public pure returns(uint) {
    bytes32 h;
    return h;
}

// The precompiled function name is not specified. The calldata must match exactly the name of the expected argument in the calling contract.
calldata f() public pure returns(uint) {
    bytes32 h;
    h;
}
 // The expected contract's method name must match exactly the second argument.

 function f1() public pure returns(uint) {
    require(false);
    g();
    h();
}
}

contract Calldata4 {

 * @return The number of arguments to the expected argument's function.
 */
function g() public pure returns(uint) {
    bytes32 h;
    h;
}


calldata f() public pure returns(uint) {
    g();
    bytes32 h;
    return h;
}

}

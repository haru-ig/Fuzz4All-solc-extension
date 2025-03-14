pragma solidity ^0.8.0;
contract I {
    bytes5 private _func;
    function f() external {
        (bool success, bytes memory returndata) = _func;
    }
    constructor() { _func = keccak256("test"); }
}

pragma solidity ^0.8.0;
contract I {
    bytes4 private _func;
    function f() external {
        (bool success, bytes memory returndata) = _func;
    }
    function _test(bytes4 func) internal { _func = func; }
    constructor() { _test(keccak256("test")); }
}

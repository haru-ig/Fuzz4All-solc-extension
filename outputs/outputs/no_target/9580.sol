pragma solidity ^0.8.0;
contract _Interface32_v0 {
    bool private _foo = false;
    function foo0(bytes memory _data) virtual external returns (bool) {
        bool _result = _foo;
        (bool _result, ) = address(this).call(_data);
        return _result;
    }
}
contract _Interface32_v2 {
    bytes private _foo;
    function foo2(bytes memory _data) external returns (bool) {
        bytes memory _result = _foo;
        (bool _result, ) = address(this).call(_data);
        return _result;
    }
}
function main() {
    (bool _result0, ) = address(new _Interface32_v0()).call(abi.encodeWithSelector(_Interface32_v0.foo0.selector));
    assert(_result0);
}

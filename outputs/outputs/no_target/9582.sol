pragma solidity ^0.8.0;
interface _Interface32_v0 {
    function foo0(bytes memory _data)  external;
}
interface _Interface32_v1 {
    function foo1(string memory _data)  external;
}
interface _Interface32_v2 {
    function foo2(bytes memory _data)  external;
}
contract InterfaceProxy1_v2 {
    uint8 constant internal _v = 2;
    _Interface32_v0 _v0Instance;
    _Interface32_v1 _v1Instance;
    _Interface32_v2 _v2Instance;
    constructor() public {
    _v0Instance = _Interface32_v0(0x04f2602054860399471c06419db5793e48d618fb);
    _v1Instance = _Interface32_v1(0x04f19062548610f4a71c06419dc5793e599618fb);
    _v2Instance = _Interface32_v2(0x04f2d6e254861bd1a71c06419db5893db76618fb);
    }
    function foo0(bytes memory _data)  external returns (bool){ _Interface32_v0 _contractAddr = _v0Instance; return _contractAddr.foo0(_data); }
    function foo1(string memory _data)  external returns (bool){ _Interface32_v1 _contractAddr = _v1Instance; return _contractAddr.foo1(_data); }
    function foo2(bytes memory _data)  external returns (bool){ _Interface32_v2 _contractAddr = _v2Instance; return _contractAddr.foo2(_data); }
}

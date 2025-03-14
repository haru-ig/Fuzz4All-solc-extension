pragma solidity ^0.8.0;

contract mapmap {
    event myEvent;
    mapping(bytes32 => bytes32) public map;
    constructor() {


        map.set(keccak256(abi.encodeWithSignature("hello")), keccak256(abi.encodeWithSignature("bye")));
    }

    function f() public {
        (,var) = map;
        mapmap mapmap_ = mapmap(map);
        mapmap_.f();

        mapmap_.set("x", "x");
        mapmap_.set("a", "b");
        mapmap_.set("x", "y");
        mapmap_.set("a", "c");
        (,var) = map;
        mapmap_.g();
    }

    function g() public returns(bytes32) {
       mapmap mapmap_ = mapmap(map);
       bytes32 key = 0x01;
       (,var) = map;
       mapmap_.set(0x01, 0x02);

       bool ok = mapmap_.hasAddress(0x01);
       mapmap_.get(0x01);

       return mapmap_.get(key);
    }

    function hasAddress(address addr) public returns (bool) {
        return map.contains(keccak256(abi.encode(addr)));
    }

    function get(bytes32 key) public view returns(bytes memory) {
        return map.get(key);
    }
}

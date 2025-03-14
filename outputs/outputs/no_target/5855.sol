pragma solidity ^0.8.0;
contract C9 {
    uint constant x = 0xFE;
}
contract C33 {
    uint constant x = 0;
    uint constant x2 = 0x5;
    uint constant x3 = 0x10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003;
}
contract C34 {
    struct Foo {
        uint id;
        uint value;
    }
    map(address => Foo) public fooStorage;
    function() public {

        fooStorage.get(address(0x2))
            == fooStorage.get(address(0x2))
    }
}
contract C35 {
    mapping(address => uint) public fooStorage;
    function() public {

        fooStorage.get(address(0x2))
            == fooStorage.get(address(0x2))
  }
}

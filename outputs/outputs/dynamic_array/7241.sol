pragma solidity ^0.8.0;
library Test {
    struct Data2 { address[] mem; }
    function test001() public pure returns (Data2 memory ret) { ret = Data2(new address[](3)); }
    function test002() public pure returns (Data2 memory ret2) { ret2[2] = new address[](2); }
    function test003() public pure returns (Data2 memory ret2) { ret2 = Data2({a: uint[234] memory: 100, b: 101}); }
}

pragma solidity ^0.8.0;
library Test {
    struct Data2 { address[] mem; }
    function test001() public pure returns (Data2 memory ret) { address[] mem = {0x0,0x1,0x2,0x3,0x4}; ret = Data2(mem); }
    function test002() public pure returns (Data2 memory ret2) { ret2 = Data2({ a: uint[234] memory: 100, b: 101 }); }
    function test003() public pure returns (Data2 memory ret2) { ret2[2] = new address[](0); }
}

pragma solidity ^0.8.0;
contract Good3 {
    constructor() {}
    function test(address[] memory a_) public {}
}

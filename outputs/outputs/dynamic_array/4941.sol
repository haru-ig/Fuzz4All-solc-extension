pragma solidity ^0.8.0;
interface Test67Interface {
    event Bar(string indexed payload);
    event Baz(bool indexed payload);
    function bar() external view returns (bool flag, Test67Interface indexed _baz) {}
    function baz() external view returns (uint) {}
    function bar2() external view returns (uint, bool indexed, uint indexed, uint indexed, bytes32, uint256) {}
    function baz2() external pure returns (uint, bool) {}
    function bar3() external view returns (uint8, Test67Interface[] indexed, map(uint8) indexed) {}
    function baz3() external view returns (bool, address) {}
    function bar4() external view returns (float, uint) {}
    function baz4() external view returns (uint, bool, uint) {}
    function bar5() external view returns (uint64, bool) {}
    function baz5() external pure returns (bool, bool, address) {}
    function bar6() external view returns (Test67Interface, Test67Interface, Test67Interface) {}
    function foo6() external view only_owner returns (uint) {}
}

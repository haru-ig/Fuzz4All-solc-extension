pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract I {
    function test(Interface16 a, string memory b) external;
    function test2() external;
}
pragma solidity ^0.8.0;
contract I {
    function test(string memory a, string memory b) external;
    function test2() external;
}
contract I {
    function test(Address memory a, string memory b) external;
    function test2() external;
}
contract I {
    function test(uint a, string memory b) external;
    function test2() external;
}
contract I {
    function test(bool a, string memory b) external;
    function test2() external;
}
contract I {
    pragma solidity 0.7.1;
    function test(uint256 a, string memory b) public { }
    function test2() public { }
}
pragma solidity ^0.8.0;
contract I {
    event test(uint m);
    function test(uint m) public { }
    function test2() public { }
}

pragma solidity ^0.8.0;
contract I {
    function test(address a) public { }
    uint[x x] test2() public { }
    event test();
    event test2();
    function test() public { }
    function test2() public { }
}
pragma solidity ^0.8.0;
interface Interface16 {
    function testEvent() external;
}
contract I {
    address test(Interface16 a) public;
    event test();
}
pragma solidity ^0.8.0;
contract Interface1 {
    function log() external;
}
contract Interface12 {
    event test();
    function log(string memory a) public;
}
pragma solidity ^0.8.0;

contract Imp {
    I a;
    bytes[] b;
    bytes10 c;
    bytes100 d;
    bytes1000 e;
    bytes10000 f;
    mapping(address => uint256[x xx]) g;
    function log() public { }
    string test(I i, address a, bytes[] memory b) public { }
    function test(I.testEvent testEvent) public { }
}

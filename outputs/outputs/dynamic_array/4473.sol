pragma solidity ^0.8.0;
contract MutatedWithNew { function testPrevious() public {
} }

pragma solidity ^0.8.0;
contract MutatedWithNew { function testPrevious() public {
} }

pragma solidity ^0.8.0;
contract Test {
    bytes[100] public memoryStorage;
    function test() public {
        MutatedWithNew[] memory a = new MutatedWithNew[](3);
        MutatedWithNew a1 = new MutatedWithNew();
        a1.testPrevious();
        a.push(a1);
        a.push(a1);
        a[0].testPrevious();
        a[2].testPrevious();
    }
}

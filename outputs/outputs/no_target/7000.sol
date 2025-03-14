pragma solidity ^0.8.0;
library Test {
    function func() public pure returns (bytes memory) {
        return "";
    }
}

pragma solidity ^0.8.0;

contract test {
    function test() public pure {
        Test.func();
    }
}

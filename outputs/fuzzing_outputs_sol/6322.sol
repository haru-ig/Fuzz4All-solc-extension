pragma solidity ^0.8.0;
contract Test {
    function test() public {
        NotMutatedSet contract1 = new NotMutatedSet();

    }
}

pragma solidity ^0.8.0;
contract Test {
    function test() public {
        (string memory a1, bool b, uint[] memory c) = (1, false, [32]);
    }
}

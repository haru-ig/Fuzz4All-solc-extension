pragma solidity ^0.8.0;
contract EtherTester {
    receive() external pure {}
}

pragma solidity ^0.8.0;
contract Mixin {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract TestInterface {
    function testCall(address caller) external {
        bool isPayable = isPayable();
        assert(isPayable);
        assert(!caller.isContract());
    }
}

pragma solidity ^0.8.0;
contract FallbackInterface {
    receive() external pure {}
}

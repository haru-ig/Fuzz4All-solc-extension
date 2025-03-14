pragma solidity ^0.8.0;
contract Test {
    function test() internal pure {
        bytes memory foo;
        uint foo;
    }
}
contract EtherTest is Caller {
    fallback() external payable {}
}
contract Complex {
    function complex() internal {
        Test.test();
    }
}
contract FallbackCaller {
    function main() public pure {
        Complex c;
        c.complex();
    }
}
contract FallbackReceiver {

    fallback() external payable {}
}
contract Caller is FallbackCaller, FallbackReceiver {
    constructor () public { }

    function test() public pure {
        bytes memory foo;
        uint foo;
    }
}
contract CallerTester {
    function main() public pure {
        Caller c;
        c.test();
    }
}

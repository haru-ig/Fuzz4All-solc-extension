pragma solidity ^0.8.0;
contract MutatedFallbackTest {
    uint counter;
    fallback() external payable {
        counter += 1;
    }
    function testMutability() public {
        fallback();
    }
}
contract FailedFallbackTest {
    uint counter;
    fallback() external payable {
        counter += 1;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    fallback() external payable {

    }
    function main() public {
        uint x = 1;
        fallback();
    }
    function callFail() public {
        uint x = 1;
        fallback();
    }
    function callPass() public {
        uint x = 1;
        fallback();
        fallback();
    }
}

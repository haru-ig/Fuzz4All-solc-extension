pragma solidity ^0.8.0;
contract Fallback {
    modifier test() {
        _;
        fallback();
    }
}

pragma solidity ^0.8.0;
contract TestCaller {
    fallback() external {
        revert();
    }
}

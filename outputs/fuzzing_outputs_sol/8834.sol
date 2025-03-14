pragma solidity ^0.8.0;
contract FallbackTest {
    uint counter;
    fallback() external payable {
        counter += 1;
    }
}

pragma solidity ^0.8.0;
contract InvalidFunction {
    fallback() external payable {

    }

    receive() external payable {}
}

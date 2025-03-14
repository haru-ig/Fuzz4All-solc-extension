pragma solidity ^0.8.0;
library MutatedCaller {
    function fallback() public { require(true); }
}

contract MutatedCallerInterface {
    function fallback() external;
}

pragma solidity ^0.8.0;
contract MutatedCaller is MutatedCallerInterface {
    function fallback() public { require(true); }
}

pragma solidity ^0.8.0;
contract mutatedCaller3 is  mutatedCaller3 {
    function fallback() public { }
}

pragma solidity ^0.8.0;
contract caller is  mutatedCaller2 {
    function receive() external pure { }
    function fallback() public pure { }
}

pragma solidity ^0.8.0;
contract mutatedCaller2 {
    function receive() external pure { }
}

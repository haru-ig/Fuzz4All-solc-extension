pragma solidity ^0.8.0;
 contract Fallback {
    fallback() public {}
    function mutated() public {}
}

pragma solidity ^0.8.0;
contract Caller {
    address payable fallback;
    constructor() public {
        fallback = payable(address(new Fallback()));
    }
    fallback() public {}
    function mutated() public {}
}

pragma solidity ^0.8.0;
contract Caller {
    address public fallback;
    function run() public {
        fallback = address(this);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address public fallbackWithoutReceive;
    address public fallbackToEtherWithReceive;
    uint public fallbackCalled;
    uint public fallbackContractCalled;
    function run() public {
        fallbackWithoutReceive = address(this);
        fallbackToEtherWithReceive = address(this);
    }
}

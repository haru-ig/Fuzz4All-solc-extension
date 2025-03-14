pragma solidity ^0.8.0;
contract B {
    fallback internal () public {}
}

pragma solidity ^0.8.0;
contract B {
    fallback (uint) public pure {}
}

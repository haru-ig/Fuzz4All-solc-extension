pragma solidity ^0.8.0;
contract C11 {
    fallback () external payable {}
    receive () external {}
}

pragma solidity ^0.8.0;
contract C12 {
    fallback () external payable receive () {}
}

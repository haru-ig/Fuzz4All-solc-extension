pragma solidity ^0.8.0;
contract Example9 {

    receive () external payable {}
}

pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable {}
    receive () external payable {}
}

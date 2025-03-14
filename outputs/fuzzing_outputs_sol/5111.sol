pragma solidity ^0.8.0;
contract B {

    receive() external payable;
}

pragma solidity ^0.8.0;
contract A is B {
    address payable fallback function();
}
contract B is E {
    receive() external payable;
}
contract E {
}
contract F is B {
    receive() external payable;
}

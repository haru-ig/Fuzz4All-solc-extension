pragma solidity ^0.8.0;
contract C {
    uint private x;
    function f() external payable virtual {
        x++;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint private x;
    fallback() public payable {}
}

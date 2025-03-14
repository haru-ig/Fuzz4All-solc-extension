pragma solidity ^0.8.0;
contract Example13 {
    uint8 num;
    receive() external payable {
        num += 1;
    }
}

pragma solidity ^0.8.0;
contract Example14 {
    uint128 num;
    receive() external payable {
        num += 1;
        CallerExample14().receive();
    }
    receive() external payable { }
}

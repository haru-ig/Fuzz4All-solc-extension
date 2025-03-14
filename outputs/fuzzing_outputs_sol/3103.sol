pragma solidity ^0.8.0;
contract Example12Mut2 {
    event Fulfilled(uint value);
    uint num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}
contract Example12N2 {
    event Fulfilled(uint256 value);
    uint256 num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}

pragma solidity ^0.8.0;
contract Example12Mut3 {
    event Fulfilled(uint value);
    uint num;
    receive() external {
        num += 1;
        emit Fulfilled(num);
    }
}
contract Example12N3 {
    event Fulfilled(uint256 value);
    uint256 num;
    receive() external {
        num += 1;
        emit Fulfilled(num);
    }
}

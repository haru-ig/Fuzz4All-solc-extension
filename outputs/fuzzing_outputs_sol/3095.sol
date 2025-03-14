pragma solidity ^0.8.0;
contract Example12Mut {
    event Fulfilled(uint value);
    uint256 num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}

pragma solidity ^0.8.0;
contract Example12N {
    event Fulfilled(uint256 value);
    uint256 num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}

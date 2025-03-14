pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Callers {
    address receiver;
    receive() external payable {
        (address(receiver)).call("");
    }
}

pragma solidity ^0.8.0;
contract CallMethods{
    receive() external payable {
        uint256 y = 1;
        (receiver).getReturnsReturn(x => {
            uint256 z = x + y;
        }, 2);
    }
}

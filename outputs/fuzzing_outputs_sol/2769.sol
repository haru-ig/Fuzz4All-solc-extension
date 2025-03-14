pragma solidity ^0.8.0;


    function fallback() external payable {
        (bool success, bytes memory data) = msg.sender.call{value: msg.value}("");
        require(success, "Fallback function called but Ether never transferred");
        emit Fallback();
    }
    event Fallback();
}

pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback () external payable { return (1); }
}

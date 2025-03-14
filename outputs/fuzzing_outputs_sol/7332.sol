pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Caller{
    address receiver;
    receive() external payable {

        address(receiver).call{value: 5 ether}("");
    }
}


pragma solidity ^0.8.0;
contract DamagedFallback{
    receive() external payable {}
}

pragma solidity ^0.8.0;

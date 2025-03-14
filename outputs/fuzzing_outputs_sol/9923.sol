pragma solidity ^0.8.0;
contract Old {
    function old_(uint a) public pure returns(uint b) {
        b = 2*a;
    }
}
contract New {
    function new_(uint a) public pure returns(uint b) {
        b += 2*a;
    }
}

pragma solidity ^0.8.0;
contract Old {
    address public owner;
    function old_(uint a,
        address  _newAddress) public
    payable
    {
        (bool success, ) = 0x1CFFDA579462D93D7610B8B1C8A45353531906857D845C5743DE23FD0685C52E.call{value: address(address(a).balance)}{_newAddress}(abi.encodeWithSignature("old(uint256)")(a));
    }
    receive() external payable {}
}
contract New {
    address public owner;
    bytes4 private constant _RECEIVE = 0x6a384e81;
    function new_(uint a,
        address  _newAddress) public
    {
        (bool success, ) = 0x1CFFDA579462D93D7610B8B1C8A45353531906857D845C5743DE23FD0685C52E.call{value: address(address(a).balance)}{_newAddress}(abi.encodeWithSignature("old(uint256)")(a));
    }
    receive() external payable {
        (bool success, ) = msg.sender.call{value: address(address(this).balance){0}(abi.encodeWithSignature("new(uint256)",a))}{_RECEIVE}(abi.encodeWithSignature("old(uint256)")(a));
        require(success,"Unable to make transfer");
    }
}

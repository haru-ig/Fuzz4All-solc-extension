pragma solidity ^0.8.0;
contract MyContract {
    constructor(address ownerOne) {
        MyContract(ownerOne);
    }

    address _owner = address(0);

    function MyContract(address ownerTwo) internal {
        _owner = ownerOne;
        ownerTwo.call{value: 8 ether}(abi.encode("0x00"));
    }

    function getOwner() public view returns (address) {
        return _owner;
    }
}

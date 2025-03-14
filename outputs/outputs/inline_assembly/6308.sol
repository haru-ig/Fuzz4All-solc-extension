pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ContactInfo {
    function getContactInfo() public pure returns (
            address maker, uint256[] memory calldata addresses, uint256[] memory calldata amounts){
        return(0x43b6f66c5505b5dc627fd51804302e09a40c8227, [0x00, 0x00], [2000000000, 1000000000]);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ContactManager {
    address contactAddress;
    event Change(address indexed to, uint256[] addresses,uint256[] amounts);

    constructor(address _contactAddress) public {
        contactAddress = _contactAddress;
    }

    function changeContactAddresses(uint256 _index, uint256[] calldata addresses, uint256[] calldata amounts)
        public
        {
        require( addresses.length == amounts.length);
        contactAddress.call{ value: amounts[_index] }(keccak256(abi.encode(contactAddress.contract, addresses, amounts)));

        emit Change(contactAddress, addresses, amounts);
    }
}

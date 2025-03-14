pragma solidity ^0.8.0;
contract GenesisUpgrade {
    address public _admin;
    mapping(uint256 => uint256) public _nonce;

    constructor() {
        address(new GenesisUpgrade()).transfer(_admin, 100 ether);
        emit NewAdmin(_admin);
    }

    event NewAdmin(address newAdmin);
    function admin() public view returns (address) {
        return _admin;
    }

    function incrementNonce(uint256 id) public {
        _nonce[id]++;
    }
}

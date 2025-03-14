pragma solidity ^0.8.0;
contract SimpleY4 {
    string constant public name = 'name';
    bytes32 constant public version = '0.0.1';
    bytes32 constant public author = 'author';
    string contract_name;
    bytes32 chain_id;

    constructor(
    string memory _contract_name,
    bytes32 memory _chain_id) {
        contract_name = _contract_name;
        chain_id = _chain_id;
    }

    function getNetworkVersion() public view returns(string memory) {
        return 'v2.5.0';
    }
}

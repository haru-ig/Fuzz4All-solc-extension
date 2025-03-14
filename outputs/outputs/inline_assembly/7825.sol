pragma solidity ^0.8.0;
contract L16 {
    struct Store { uint x; }
    uint x = 0;
    function contractCall(address contract_address) public payable {
        require(contract_address.call{ value: msg.value }(""));
    }
}

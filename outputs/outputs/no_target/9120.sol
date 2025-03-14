pragma solidity ^0.8.0;
contract mutations_to_contract_v9 {
    address to;
    function (uint256) payable returns(address) { return to; }
    uint[9] array_v9;
    function useAddressAndCheck(uint256 size, uint256 index) public {
        require(to[index] == array_v9[index], "not equal");
    }
}

pragma solidity ^0.8.0;

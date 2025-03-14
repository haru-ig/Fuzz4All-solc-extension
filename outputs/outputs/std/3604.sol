pragma solidity ^0.8.0;
contract ArrayContract {
    function get_array_balance(address contractAddress)public view returns (uint) {
        uint array_Balance;
        if (contractAddress == mappingOfAddressesToTotalAccountBalance[msg.sender]) {
            array_Balance = uint(address(this)).balance;
        }

        else if (mappingOfAddressesToTotalAccountBalance[contractAddress].length!= 0) {
            uint total_Balance = uint(contractAddress).balance;
            for (uint i = 0; i < mappingOfAddressesToTotalAccountBalance[contractAddress].length; i++) {
                if (total_Balance > mappingOfAddressesToAccountBalance[mappingOfAddressesToTotalAccountBalance[contractAddress][i]]) {
                    total_Balance = mappingOfAddressesToAccountBalance[mappingOfAddressesToTotalAccountBalance[contractAddress][i]];
                }

            }
            array_Balance = total_Balance;
        }

        return array_Balance;
    }
}

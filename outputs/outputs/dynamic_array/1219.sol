pragma solidity ^0.8.0;



contract MutatedSemanticIndependence {
    uint[10] accounts;

    constructor() public {
        accounts = [0, 25, 40, 55, 70, 85, 100, 115, 130, 145];
    }

    function mutateAccounts(uint i) public pure {
        accounts[i]++;
    }

    function getAccountsSize() public view returns (uint){
        bytes memory b;
        for(uint i = 0; i < accounts.length; i++){
            b = abi.encodePacked(b, uint160(accounts[i]));
        }
        return uint(b.length);
    }

    function getAccounts() public view returns (uint i) {
        bytes memory b;
        for(uint i = 0; i < accounts.length; i++) {
            b = abi.encodePacked(b, uint160(accounts[i]));
        }
        return uint(abi.decode(b, (uint[10]})));
    }

    function getAccountsSizeAndCopy() public view returns (uint i) {
        bytes memory b;
        i = uint(accounts.length);
        for(; i > 0; i--){
            b = abi.encodePacked(b, uint160(accounts[i-1]));
        }
        return uint(abi.decode(b, (uint[10]})));
    }
}

pragma solidity ^0.8.0;
contract Duplicated2 is Duplicated {
    address owner;
    bytes32 internal constant KEY_1 = "key1";
    bytes32 internal constant KEY_2 = "key2";
    bytes32 internal constant KEY_3 = "key3";
    event log(uint value);
    Event internal recordArray;
    function checkHash(uint amount) public {
        bytes32 secretKey = uint2h160(address(owner())).toEthAddressBytes32();
        bytes32 hash = keccak256(abi.encode(amount, secretKey));
        if (b[hash]!= uint(bytes32(uint256(0)))) {
            uint value = a[amount];
            emit log(value);
            assert(value > bytes32(uint(0)));
            b[hash] = uint(bytes32(uint256(0)));
        }
    }



    modifier private() {
        require(b[KEY_3] == b[KEY_1] * bytes32(uint256(0))), "You have to play!!");
        _;
    }
    function getBalance() public public view returns (uint) {
        return a["0x000C33C02550cB111e3b52C761eE2a40f8c167fA"];
    }
    fallback() payable external{






    }
}

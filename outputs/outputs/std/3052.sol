pragma solidity ^0.8.0;
struct Storage {
    mapping(bytes32 => uint256) balance;
}





pragma solidity ^0.8.0;
interface IReceivingStorage {

    event ReceiveStorage(address indexed sender, address indexed receiver, uint256 value);

    function addToArray(Storage storage storage, address address1, address address2) public returns (bytes32 success);
}

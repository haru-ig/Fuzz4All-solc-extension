pragma solidity ^0.8.0;


contract Factory {

    address _owner;


    address public createdRandomAddresses[3];

    constructor () {
        _owner = msg.sender;
        createdRandomAddresses[0] = IFactory(_owner).createContract(createdRandomAddresses[0]);
        createdRandomAddresses[1] = IFactory(_owner).createContract(createdRandomAddresses[1]);
        createdRandomAddresses[2] = IFactory(_owner).createContract(createdRandomAddresses[2]);
    }



    function createRandomContract() returns (address){

        if (createdRandomAddresses.length == 2) {
            createRandomContract();
        }


        return createdRandomAddresses[Math.mod(uint(uint256(keccak256(abi.encodePacked(keccak256(bytes(abi.encodePacked(msg.sender, msg.data))))))), createdRandomAddresses.length)];
    }



    function getOwner() public returns (address) {
        return _owner;
    }
}

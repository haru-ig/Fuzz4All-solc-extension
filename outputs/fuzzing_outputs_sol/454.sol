pragma solidity ^0.8.0;
contract MutatedCaller2 {

    receive() external payable {
        EtherStorage.balance += msg.value;
    }
}
pragma solidity >0.5.16;
contract Caller2 {
    EtherStorage public EtherStorage;


    receive() external payable {
        EtherStorage.balance += msg.value;
    }

    function Caller2(address _EtherStorage) {
        EtherStorage = EtherStorage(_EtherStorage);
    }
}

contract MutatedCaller {
    struct EtherStorage {
        uint balance;
    }


    receive() external payable {
        EtherStorage.balance += msg.value;
    }
}
pragma solidity >=0.5.16 <0.8.0;
contract Caller {
    struct EtherStorage {
        uint balance;
    }


    function () external payable {
        bytes memory empty;
        (EtherStorage storage EtherStorage) = this;
        EtherStorage.balance += msg.value;
        return (EtherStorage);
    }
}

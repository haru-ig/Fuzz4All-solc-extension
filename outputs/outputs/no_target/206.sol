pragma solidity ^0.8.0;
contract A {
    IFactory iFactory;
    function createContract() public {
        iFactory = new IFactory();
        address owner = msg.sender;
        A[] memory contractList;
        contractList.push(new A());
        contractList.push(new A());
        for(uint i=0; i < contractList.length; i++){
            contractList[i].newContract(owner);
            owner=contractList[i].owner;
        }
        A lastContract = contractList[contractList.length-1];
        owner = msg.sender;
        contractList[contractList.length-1].init(msg.sender);

    }
    function newContract(address owner) public {
        IFactory factoryInstance = IFactory(iFactory);
        address instance;
        (instance, ) = factoryInstance.createContract(owner);
        contracts.push(instance);
        iFactory = factoryInstance;
    }
    constructor() {
        iFactory = IFactory(0x8d28778C1fCBB2a0621C596b600a143278D12840);
    }

    address[] public contracts;
    address public owner;
}

contract B {
    A[] public contractArray;
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function init(address owner) public {
        owner = msg.sender;
    }
    function newContract(address owner) public {
        contractArray.push(new A(owner));
    }
}

contract Sample{
    function callMe() public {
    }
}
contract Contract1 is Sample {
    constructor() public {
    }
    function newContract(address owner) public {
        A[] memory contractList;
        contractList.push(new A());
        contractList.push(new A());
    }
}
contract Contract1 is Sample, B {
    A public contractC;
    address public owner;
    constructor() public {
        owner = msg.sender;
    }
    function init(address owner) public {
        owner = msg.sender;
    }
    function newContract(address owner) public {
        contractArray.push(new A(owner));
    }
}

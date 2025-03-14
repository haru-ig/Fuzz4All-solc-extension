pragma solidity ^0.8.0;
contract MutatedArrayExample {
    struct InnerStruct {
        uint256 a;
    }
    InnerStruct[] array;
    address addr;

    function getArrayCount() public view returns (uint256 count) {
        count = array.length;
    }

    function resizeArray(uint) public {
        array.resize(msg.data.length);
    }

    function createNewElement() public {
        InnerStruct memory innerStruct = InnerStruct({a: 2});
        array.push(innerStruct);
    }

    function removeElement() public {
        uint256 index = array.length - 1;
        delete array[index];
    }


    function allocateAndUseContractInstance() public {
        addr = Address.createContract("ChildContract", "");
        addr.doSomething();
    }
    function doSomething() public {
        array.push(InnerStruct({a: 1}));
        array[0].a -= 1;
    }
}

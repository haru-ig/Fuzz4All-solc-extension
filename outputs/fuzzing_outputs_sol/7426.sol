pragma solidity ^0.8.0;
contract ContractExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
        fallback();
    }
    function get() public view returns (uint8) {
        return data;
    }
    function fallback() public payable {
        data = data ^ 1;
        data;
    }
}

pragma solidity ^0.8.0;
interface MutateExampleInterface {

    function set(uint8 _data) external payable returns (bool);
    function get() external view returns (uint8);
}

pragma solidity ^0.8.0;
interface MutateExampleInterfaceWithFallback {
    function set(uint8 _data) external payable returns (bool);
    function get() external view returns (uint8);
    function setFallback(uint8 _data) external view;
}
contract MutateContractExample {
    MutateExampleInterfaceWithFallback internal immutable mutateExample;
    constructor(MutateExampleInterfaceWithFallback _example) public {
        mutateExample = _example;
    }
    function set(uint8 _data) public {
        mutateExample.set(_data);
    }
    function get() public view returns (uint8) {
        return mutateExample.get();
    }
    function setFallback(uint8 _data) public onlyContract {
        mutateExample.setFallback(_data);
    }
}
contract MutateWithFallbackExample {
    MutateExampleInterfaceWithFallback internal immutable mutateExample;
    function accept(contract MutateExampleInterfaceWithoutFallback example) public {
        mutateExample = example;
    }
    function set(uint8 _data) public {
        mutateExample.set(_data);
    }
    function get() public view returns (uint8) {
        return mutateExample.get();
    }
}

pragma solidity ^0.8.0;
contract MutateExampleInterfaceWithoutFallback {
    function set(uint8 _data) external returns (bool);
    function get() external view returns (uint8);
}
contract MutateContractExampleWithoutFallback {
    MutateExampleInterfaceWithoutFallback internal immutable mutateExample;
    constructor(MutateExampleInterfaceWithoutFallback _example) public {
        mutateExample = _example;
    }
    function set(uint8 _data) public {
        mutateExample.set(_data);
    }
    function get() public view returns (uint8) {
        return mutateExample.get();
    }
}
contract Example {
    uint8 public

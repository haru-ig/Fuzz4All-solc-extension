pragma solidity ^0.8.0;
contract AWrapperInterface {
    constructor() public {
    }
    function getData() public view returns (bytes memory) {
        return new bytes(42);
    }
}
contract ABug {
    constructor(uint _value) public {
        uint a = 0x1;
        a.sub(_value);
    }
    function test(uint _value2) public {
        AWrapperInterface.getData() | _value2;
        AWrapperInterface.getData() >> _value2;
        AWrapperInterface.getData() << _value2;
        AWrapperInterface.getData() > uint16(1);
    }
    function test2(bytes memory _input) public {
        AWrapperInterface.getData() < _input;
        AWrapperInterface.getData() >= 0;
        AWrapperInterface.getData() >= _input;
        AWrapperInterface.getData() == true;
        AWrapperInterface.getData()!= false;
        AWrapperInterface.getData()!= 0;
    }
}


address contractAdress = 0x0000000000000001000000000000000000000000000;
bytes memory result = abi.decode(contractAdress.getData, (bytes));

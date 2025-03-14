pragma solidity ^0.8.0;
receiver Caller {
    uint storedData;
    function setCalldata(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
contract CallReturn {
    function setReturn(uint input) public {
        storedData = input;
    }
    function getReturn() public view returns(uint) {
        return storedData;
    }
}
contract CallCall {
    function call1(uint input) public payable {
        storedData = input;
    }
    function getCalldata() public view returns (uint) {
        return storedData;
    }
}
contract Call {
    uint storedData;
    function set(uint input) public {
        storedData = input;
    }
    function get() public view returns(uint) {
        return storedData;
    }
}
contract CallCallReceiver {
    uint storedData;
    address _to;
    function setCallReturn(uint input) public {
        storedData = input;
        _to.transfer(storedData);
    }
    function getCalldata() public view returns (uint) {
        return storedData;
    }
    function to(address addr) public {
        _to = addr;
    }
}
contract CallContract {
    uint storedData;
    address _addr;
    function setCalldataContract(uint input) public {
        storedData = input;
        _addr.call{value: storedData}("");
    }
    function getCalldataContract() public view returns (uint) {
        return storedData;
    }
}
contract CallRefund {
    uint storedData;
    function setRefund(uint input) public {
        storedData = input;
        throw;
    }
    function getRefund() public view returns(uint) {
        return storedData;
    }
}
contract CallSelfRef {
    uint storedData;
    function setSelfRef(uint input) public {
        storedData = input;
        uint selfStoredData = storedData;
    }
}
contract CallSelf {
    uint storedData;
    function setSelf(uint input) public {
        storedData = input;
        storedData = 1337;
    }
}
contract CallFallback {
    function setFallback(uint input) public payable {
        storedData = input;
        fallback(input);
    }
    function getFallback() public view returns(uint) {
        return storedData;
    }
}
contract ContractFallback {
    function setContractFallback(uint input) public {
        storedData = input;
    }
    function getContractFallback() public view returns(uint) {
        return storedData;
    }
}
pragma solidity 0.8.0;
contract FallbackTest {
    uint storedData;

    fallback () external payable {
        storedData = msg.value;
    }

    function getValue() external view returns (uint) {
        return storedData;
    }
}

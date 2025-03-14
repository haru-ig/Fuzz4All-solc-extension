pragma solidity ^0.8.0;
contract D {
    uint public names;
    modifier setNames(uint x) {
        names = x;
        _;
    }
    function setValue(uint x) public {
        _setNames(x);
    }
    function _setNames(uint x) private setNames(x) {
    }
    function getValue() public view returns (uint) {
        return names + value;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor() public {
        x = 1;
    }
    function getValue() public view returns (uint) {
        return x;
    }
}
pragma solidity ^0.8.7;

contract A is C {
    function getResult() public view returns (uint) {
        return getValue();
    }
    function getUserValue(uint user) public view returns (uint) {
        uint result = getValue();
        require(result == user, "Fail");
        return result;
    }
    function setUserValue(uint user) public {
        require(
            msg.sender.call{value: user}(),
            "Fail"
        );
    }
}

contract Test {
    using InlineAssembly for InlineAssembly.InlineAssembler;

    A aa;
    A.InlineAssembler asm = A.InlineAssembler.new { gas: 2000000 }();
    bytes calldata result;

    function test1() public {
        aa.setValue(1);
        aa.callSetValue(2);
    }
    function test2() public {


    }
    function test3() public {
        uint user = asm.callAndGetReturnData(abi.encodeWithSignature("_setNames(uint256)", 3));
        result = asm.callAndGetReturnData(abi.encodeWithSignature("getValue()"));
        uint user2 = getUserValue(user);
    }
    function test4() public {
        setUserValue(1);
    }
    function getUserValue(uint user) public view returns (uint) {
        uint result = getValue();
        require(result == user, "Fail");
        return result;
    }
    function getValue() public view returns (uint) {
        uint res = aa.getValue();
        require(res == 2, "failed to get right answer");
    }
}

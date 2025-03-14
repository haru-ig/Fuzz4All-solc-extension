pragma solidity ^0.8.0;
contract Example9 {
    uint public i;

    function _fallback(uint _value, bytes memory _data) public payable {}
    function modify(uint x) public {
        i = x;
    }
}
contract Caller {
    Example8 __Example8;
    Example9 __Example9;

    function __init__() public {

        __Example8 = new Example8();
        __Example9 = new Example9();
    }

    function __exampleCallAllMethods() public payable {
        Example8(address(__Example8)).add(1, 2);
        Example9(address(__Example9)).modify(3);

        uint a = callAll(address(__Example8), __Example8.add, 1, 2);
        uint b = callAll(address(__Example9), __Example9.modify, 3);
    }

    function callWithEther(uint x) public payable {
        Example8(address(__Example8)).add(x, 0);
    }

    function callWithNormalEther() public payable {
        Example8(address(__Example8)).add(1, 1);
    }

    function __call(address func, address contract, bytes memory x) public payable {
        func.call{value: x}(0);
        transfer(0, contract);
    }

    function callAll(address func, uint x, uint y) public {
        callWithEther(x);
        func.call{value: y}(0);

        Example8(address(__Example8)).add(1, 2);
        Example9(address(__Example9)).modify(3);
        Example8(address(__Example8)).add(2, 3);
    }

    function transfer(address account, address contract) public {
        uint x = callAll( Example9(contract).getVariable, uint(0), 1);
    }
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExample is InlineAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    constructor(uint Z) public {
        _g();
        _h();
        _a -= Z;
        _b -= Z + 10;
        _c -= Z;
        _d -= Z + 55;
    }
    function setParameters(uint A, uint B, uint C, uint D, address E) public {
        _g();
        _h();
        emit _emitSetParameter(A, B, C, D, E);
    }
    receive() external payable {
        setParameters(_a, _b, _c, _d, msg.sender);
    }
    fallback() external payable {
        setParameters(_a, _b, _c, _d, msg.sender);
    }
    function getReturnValue() public view returns(uint) {
        setParameters(_a, _b, _c, _d, msg.sender);
        uint temp;
        assembly { temp := returndata() }
        return temp;
    }
}

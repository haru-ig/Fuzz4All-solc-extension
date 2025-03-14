pragma solidity ^0.8.0;
contract MutationsBlock1 {
    uint public constant _var = 1;
    uint public _otherVar;
    constructor() {
    }
    function test() public view returns(uint) {
        return add(_var);
    }
    function add(uint x) internal view returns(uint){
        return x + _otherVar;
    }
    function setOtherVal(uint y) public {
        _otherVar = y;
    }
}

pragma solidity ^0.8.0;
contract MutationsBlock2 {
    uint public constant _var = 1;
    uint public _otherVar;
    constructor() {
    }
    function test() public view returns(uint){
        return _var + add(_otherVar);
    }
    function add(uint x) internal view returns(uint) {
        return x + _otherVar;
    }
    function setOtherVal(uint y) public {
        _otherVar = y;
    }
}

pragma solidity ^0.8.0;
contract MutationsBlock3 {
    uint public constant _var = 1;
    uint public _otherVar;
    constructor() {
    }
    function test() public view returns(uint) {
        return add(add(add(add(add(add(add(add(add(add(add(888888), _var), add(_var), add(_var), add(_var), add(_var), add(_var), add(_var), add(_var))))))));
    }
    function add(uint x) internal view returns(uint) {
        return x + _otherVar;
    }
    function setOtherVal(uint x) public {
        _otherVar = x;
    }
}


pragma solidity >=0.5.0 <0.8.0;
contract I {
    function foo() public pure {
    }
}
pragma solidity >=0.5.0 <0.8.0;
contract Impl {
    function foo() public pure {
        address memory addr_0x80 = 0x80;
        uint myNumber = uint(0x32A847234B4

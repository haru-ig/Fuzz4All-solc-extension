pragma solidity ^0.8.0;
contract third6 {
    uint x;
    constructor() public {
        assembly { x := 2 }
    }
}
contract third7{
    mapping(uint8 => uint) b;
    constructor () public {
        uint i = b[0];
    }
}
contract third8{
    uint x;
    constructor() public {
        uint x;
        uint i = (uint8(x) + 1) * 2;
    }
}
contract third9{
    uint8 x;
    constructor() public {
        uint i = x;
    }
}

pragma solidity ^0.8.0;
contract Test_type_to_uint8 {
    uint8 a;
    constructor() public {
        uint x;
        a = x;
    }
}


contract Test {
    uint value;

    constructor (uint _value) public {
        value = _value;
    }

    function modify(uint _newVal) public {
        value = _newVal;
    }

    function callBack(uint x) public {
         emit Callback(x);
       }

    function transfer(address _to, uint256 _value) public returns (bool success) {

        _to.transfer(_value);
        return true;
    }

    event Callback(uint indexed value);
}

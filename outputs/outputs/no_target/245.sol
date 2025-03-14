pragma solidity ^0.8.0;
interface IMutable {
    function _mutate() external;
}
interface IImmutable {
    function balance() external view returns (uint);
    function _mutate() external;
}

pragma solidity ^0.8.0;
interface IImmutable {
    function balance() external view returns (uint);
    function _mutate() external;
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    function _immutableMethod() public view returns(bool);
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    constructor(uint256 _value) public {
        balance = _value;
    }
    mapping(uint => uint256) balances;
    uint public balance;
    function _mutable() public {
        balances[msg.sender] += msg.value;
        balances[0] += msg.value;
    }
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    uint256 public counter;

    constructor() public {
        counter = 1;
    }
    function _mutable() public {


        counter = address(this).balance;
    }
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    mapping(uint => uint256) immutable balances;
    constructor(uint256 _value) public {
        balances[0] = _value;
    }
    function _immutable() public view returns (bool) {
        return balances[0] == 0;
    }
    function _immutableMethod() public view returns(bool) {
        return balances[0]!= 0;
    }
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    IImmutable immutableContract;
    constructor(uint256 _value) public {
        balances[0] = _value;
    }
    function _immutable(IImmutable _i) public view returns (bool) {
        return balances[0] == 0;
    }
    function _immutableMethod(IImmutable _i) public view returns (bool) {
        return balances[0]!= 0;
    }
}

pragma solidity ^0.8.0;
contract ImmutableInterface {
    mapping(uint => uint256) public balances;
    constructor(uint256 _value) public {
        balances[0] = _value;
    }
    function _immutable(uint56 _i) public view returns (bool) {
        return balances[0]

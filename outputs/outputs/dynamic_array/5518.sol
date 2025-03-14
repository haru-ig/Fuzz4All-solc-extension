pragma solidity ^0.8.0;
interface ITest72 {
    function bar() external pure returns(int32);
}
contract Test72 is ITest72 {
    uint256 public num1 = 400;
    uint256 public num2 = 401;
    constructor() public {
        num1 += 1;
        num2 += 1;
        bar();
    }
    function bar() public pure virtual returns(int32) {
        return 3;
    }
}

pragma solidity ^0.8.0;
contract Test74 is ITest72 {
    uint256 public num1 = 400;
    uint256 public num2 = 401;
    uint256 public num3 = 402;
    uint256 public num4 = 403;
    bytes32 public idata = keccak256(abi.encodePacked(1));
    uint256 public _num = 24;
    uint256 public numvalue = keccak256(abi.encodePacked(1));
    ITest71 public tvalue;
    constructor() public {
        num2++;
        num1 += 1;
        tvalue = new Test71();
        tvalue.bar();
        num2++;
        num1 += 1;
        bar();

        num1 += 1;
        tvalue = new Test72();
        num2 += 1;
        tvalue = new Test71();
        num2++;
        num1 += 1;
        tvalue.bar();
    }
    function bar() public pure virtual returns(int32) {
        return 3;
    }
    function setnumvalue(uint _value) public {
        numvalue = _value;
        emit ValueChanged(_value);
    }
    function getnumvalue() public view returns (uint) {
        return numvalue;
    }
    event ValueChanged(uint num);
}

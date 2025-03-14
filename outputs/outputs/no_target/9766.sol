pragma solidity ^0.8.0;
interface IToken2 {
    function test2()public view returns (string memory name,"voter",uint number);
}
contract Token2 {
    IToken2 _token;

    constructor(IToken2 _token) {
        _token = _token;
    }

    function test() external returns (uint256) {
        uint256 test = 200;
        test = test + _token.test2();
        return test;
    }
}


contract Token20 is Token2{
     constructor(IToken2 _token) Token2(5) public {
       _token = Token2(7);
     }

     function test2() public returns (uint) {
       uint test = 400;
       test = test + Token2(4).test2();
       return test;
    }
}
contract Token258 is Token20{
     constructor(IToken2 _token) Token20(_token) public {
       _token = Token258(12);
     }

     function test2() public returns (uint) {
       uint test = uint(-58);
       test = test / Token258(5).test2();
       return test;
    }
}
contract Token2592 is Token20{
     constructor(IToken2 _token) Token20(_token) public {
       _token = Token2592(16);
     }

     function test3() public returns (uint) {
       uint test = Token2592(7);
       test = test - Test2(7).test2();
       return test;
    }
}
contract Token is Token2{
     constructor(IToken2 _token) Token2(_token) public {
     }

     function test() public returns (uint) {
       uint test = 200;
       test = test + Token(1).test2();
       return test;
    }
}

contract ERC20Token is IToken2 {
    string  public name;
    uint8  public decimals = 8;
    uint256 public totalSupply;

    mapping(address => uint256) balances;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    function Token(string memory name,uint _initialSupply) public {
        balances[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        name = name;
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
        transferInternal(_to, _value);
        return true;
    }

    function transferInternal(address _to, uint256 _value) internal returns (uint256) {
        uint256 _prevBalance;

        _prevBalance =

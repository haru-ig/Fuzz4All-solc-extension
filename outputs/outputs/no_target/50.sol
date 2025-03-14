pragma solidity ^0.8.0;

contract X is IERC223Token {
    function approve(address _spender, uint _value) public returns (bool) {
         return allowed;
      }
      function allowance(address _owner, address _spender) public view returns (uint256){
        return allowed;
      }
      function transferFrom(address _from, address _to, uint _value) public returns (bool) {
        return false;
    }


}

contract A is IERC223Token {
    uint256 private _totalSupply;

     function totalSupply() public view virtual returns (uint256) {
       return _totalSupply;
    }
    uint256 public x;

    constructor(uint256 amt) public {
           _totalSupply = amt;
           x = amt;
          require(IERC223Token(this).transferFrom(address(address(0)))  );
    }






    function transfer(address _to, uint _value) public returns (bool) {
        IERC223Token(this).approve(_to, _value);
        return IERC223Token(this).transferFrom(_msgSender(), _to, _value);
    }

    function burn(uint _amount) public {
        require(msg.sender == address(this));
        IERC223Token(this).burn(_amount);
    }
}
contract B is IERC223Token {
    function burn(uint _amount) public {
        require(msg.sender == address(this));
    }
}
contract C {
    function C() public {}
    function f() public {
        B a;
        C[] b;
        uint i ;
    }
}

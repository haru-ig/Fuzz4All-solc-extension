pragma solidity ^0.8.0;

  bytes32 public x;
    mapping (uint256 => uint256) balances;
    event Transfer(address indexed _from, address indexed _to, uint _value);
    uint public _g = 1;
    ModifiesSquashGenerationsUsingYulWithSemantics x = new ModifiesSquashGenerationsUsingYulWithSemantics();
    ModifiesSquashGenerationsUsingYulWithSemantics x_withSemantics = ModifiesSquashGenerationsUsingYulWithSemantics();
    uint public _r = 2;
    uint public _w = 3;
    uint public _z = 4;
    function setG(uint _g) public {
      _g = _g;
    }
    function set_r(uint _r) public {
      _r = _r;
    }
    function set_w(uint _w) public {
      _w = _w;
    }
    constructor() public {
      balances[address(this)] = _z;
    }
    function() public {
      balances[msg.sender] = balances[msg.sender].add(_w);
      emit Transfer(address(this), msg.sender, _w);
      if (msg.sender.call{value: _w}(""); (0,0)){
        x.x = uint256(x.x).add(_g);
        emit Transfer(address(this), msg.sender, _w);
      }
    }
}

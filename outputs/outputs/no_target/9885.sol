pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Modifier{
    modifier mod(uint _x){
        require(_x > 0);
      _;
    }

    function o() public mod(5) virtual returns(uint){
        return mul(2);
    }
}
contract A {
    uint x;
    modifier m(){
        uint z = mod(x);
        if(z == 0){
          x++;
        }
        x++;
      _;
    }
    function g(uint z) public mod(z) virtual returns(uint){
        x++;
        return mod(y+1);
    }
    function f() public virtual mod(5) returns(uint){
      x++;
      return mod(y-1);
    }
    function h() public virtual m() virtual returns(uint){
      x++;
    }
    function i() public virtual returns(uint) returns (uint)  mod(m()){
      x++;
      return mod(y*z);
    }

    function j() public overloaded(g,f) m{
      x++;
    }

    function k() public override returns(uint){
      x++;
      return mod(y-1);
    }

    function l() public returns(uint) returns (uint) returns (uint, uint) mod(m() z, m(y-1) n){
      uint zv;
      x++;
      return mod(y/z);
    }



    function z() public returns(uint[16]) z {
      uint[16] memory z2;
      z2[0] = x+1;
      x++;
      return z2;
    }

}
contract B is A {
    address x;
    function l() public virtual returns(uint, uint) returns(uint[2] memory) mod(y)+ overloaded (z) reverts public{
      uint v;
      uint m = x+1;
      x++;
      require(m == mod(y*m)+(y/(uint)m) );
      require(y/(uint)v) < 2);
      return (m, m);
    }
    function z() public {
      uint [16] memory z2;
      x++;
      z2[0] = x-1;
    }

}
contract C{
  modifier mo() { }
  modifier m(uint _x) { require(_x > 0); }
  uint x;
  uint z;
  function mod(uint _x) public m(y) mo() virtual pure returns(uint){
    return _x;
  }
  uint[16] public z2;
  function h() public virtual returns(uint, uint) mod(m(z)) reverts public{
    uint x, y;

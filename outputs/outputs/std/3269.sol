pragma solidity ^0.8.0;
contract Mod {
  function test(){
    uint x=0xdeadbeefcafebabe;
    bool res = (x%2==0);
    return res;
  }
}

pragma solidity ^0.8.0;
contract A {
  function f() internal pure returns(uint x){
        uint _addr=uint(keccak256("thisaddressis"));
        return (uint(uint160(_addr))%2);
  }

  function test()
    external
    returns (bool){
      uint x=6;
    uint y=uint(keccak256("somestring"));
    uint x_1=mod(x, (2));
    uint y_1 = mod(y, (2));
    uint z = (f() << (uint(0) / 2)) / f();
    z = (f() >> (uint(0) / 2)) / f();
    return ((x_1%2)==0) && ((y_1%2)==0) && (z==x/2) && (x/2/2==(x/2+y)/2);
  }
}

pragma solidity ^0.8.0;
contract B {
  function test()
    external
    returns (bool){
      uint x = mod(0xdeadbeefcafebabe, (2));
      uint y = mod(uint(keccak256("somestring")), (2));
      uint test=(((x%2)==0)&&(y%2)==0);
      return test;
    }
}

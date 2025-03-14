pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M(uint value) public {
    a+=b;
    b+=value;
    a-=b;
    b-=c;
    c=-value;
    assert(c==0);
  }
}

pragma solidity ^0.8.0;
contract C{
  uint public a;
  assembly {
    a:=0x10
  }
}

pragma solidity ^0.8.0;
contract C{
  uint[] public a;
  uint[] public b;
  uint[] public c;
  assembly{
    c:=0
    for (i := 0; i < 100; i++) {
      c:=c+1
    }
  }
}

pragma solidity ^0.8.0;
contract C{
  uint[] public a;
  uint[] public b;
  uint[] public c;
  uint[] public d;
  uint[] public e;
  uint[] public f;
  address[] public g;
  uint[] public h;
  uint[] public i;
  uint[] public j;
  uint[] public k;
  uint public l;
  uint public m;
  uint[] public n;
  uint[] public o;
  uint[] public p;
  uint public q;
  uint[] public r;
  uint[] public s;
  uint[] public t;
  uint public u;
  uint public v;
  uint[] public w;
  uint[] public x;
  uint[] public y;
  uint[] public z;
  assembly{
    c:=0
    for (i := 0; i < 200; i++) {
      c:=c+1
    }
    b: begin {
      x:=0
      a:=0x100
      for i := 0; i < 7; i:=add(1,i) {
        x:=add(add(x,a),x)
      }
    }
      for(j:=0;j<100;j:=add(3,j)){
      a:=add(x,a)
    }
  }
    for (i := b.size() - 1; i >= 0; i--){
    a:=add(a,uint8(b[i]))
    }
    for (i := b.length - 1; i >= 0; i--){

pragma solidity ^0.8.0;
contract D
{
address public e;
constructor (address z) {
 c = z;
}
address public c;
}

pragma solidity ^0.8.0;
contract E {}
contract F
{

address public e;
constructor (address z) {
 e = z;
 D(c).c = address(this);
}
address public c;
}

pragma solidity ^0.8.0;
contract G {}
contract H {}
contract I {}
contract J { function f(){
   }
}
contract K { function g(){
   assert(true);
}
}
contract L {
    function f() public {
     J j;
     j.f();
    }
}
contract M {
  function f() public {
   I i;
    i=(address(new G()));
   }
}
contract N
{
    function f() public {
     assert(c!= address(0));
    }
}
contract O
{
address[] public a;
mapping (address => uint) public b;
uint[] public c;
constructor() public {
 a.push(1);
 this.e.setBalance(address(a),1);
}
}
contract P
{
  function f() public {
   address[] memory addr = new address[](this);
   a=addr;
   for (uint256 i=0; i<b.length; i++){
     b[addr[i]]++;
    }
    c.push(a[addr[0]]);
    c.push(b[addresses[]]));
  }
}

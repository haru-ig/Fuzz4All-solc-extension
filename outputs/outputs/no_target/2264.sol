pragma solidity ^0.8.0;
contract mutation3 {
 uint[15] public b;
 function f() public {
     for(uint i=0;i<5;++i){
         b[14+i] = 5;
     }
  }
 }




pragma solidity ^0.8.0;
contract A {
    address public b;
    function test() public payable {
        this.b.transfer(msg.value);
    }
}
pragma solidity ^0.8.0;
contract B {
    uint public c;
    function f() public {
        c.call.value(this.test());
    }
}

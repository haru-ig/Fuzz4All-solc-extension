pragma solidity ^0.8.0;
 contract B {
     uint x;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         x += 1;
      }
 }

pragma solidity ^0.8.0;
contract A{
    modifier m(){
       x += 1;
       _;
    }
}
contract B{
    uint x;
    constructor ( ) public{
        x = 0;
    }
     function f( ) public m{
        x += 1;
        x++%+1;
    }
}

pragma solidity ^0.8.0;
contract A{
    modifier m(){
       x += 1;
       _;
    }
}
contract B{
    uint x;
    constructor ( ) public{
        x = 0;
    }
    function f( ) public m{
        x += 1;
        x--;
    }
}

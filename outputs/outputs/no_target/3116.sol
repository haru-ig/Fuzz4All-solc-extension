pragma solidity ^0.8.0;
contract fourth{
    uint v;

    function f() public {
        v = uint160(-1);
        v + uint160(1);
    }
}
contract fifth{
    uint v;
    function f() public {
        v =  0 ;
        v++ ;
    }
}
contract sixth{
    uint v;
    function f() public {
        v = 256/3 ;
        uint256 x = v--;
    }
}
contract seventh{
  uint v;
    function f() public {
        v = 100000/3 ;
        uint256 x = v++;
    }
}

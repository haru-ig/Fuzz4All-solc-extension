pragma solidity ^0.8.0;
contract Memory {
   function write(uint64 a, address x) public {
       uint64 b;
       Memory.write(a, b);
   }
   function read(uint64 a) public view returns(uint64)
    {return a;}
}
pragma solidity ^0.8.0;
contract Memory {
    function write(uint64 a, address x) public {
       uint64 b = 0;
       b = 1;
       b = b + 1;
       Memory.write(a, b);
   }
   function read(uint64 a) public view returns(uint64)
    {return a;}
}

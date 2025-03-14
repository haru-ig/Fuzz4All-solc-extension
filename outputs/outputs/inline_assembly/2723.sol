pragma solidity ^0.8.0;
contract A {
    struct Foos {
        uint public names;
        uint namelength;
    }
    uint public names;
    uint namelength;
    receive() external {
        Foos storage myValues =foos;
    }
    function set(uint x) public {
      if (x < 26) {
        namelength = x;
      } else {
        namelength = 26;
      }
    }
    function clear() public {
        namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}

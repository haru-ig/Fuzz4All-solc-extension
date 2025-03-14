pragma solidity ^0.8.0;
contract D {
  uint x = 0;
  function fallback() public payable {
    x = x + 1;
  }
}


pragma solidity ^0.8.0;
contract AB {
  uint public x = 0;
  function A(uint a) public pure {
    for (uint j = 0; j < a; j++) {
      x++;
    }
  }
  function B() public pure {
    x++;
  }
}
contract AB {
    function AB() {
    }
    function A(uint a) public pure {
        for (uint j = 0; j < a; j++) {
            x++;
        }
    }
    function B() public pure {
        x++;
    }
    receive() external payable {
        throw;
    }
}
contract AB {
    function A() {
    }
    function A(uint a) public pure {
        for (uint j = 0; j < a; j++) {
            x++;
        }
        throw;
    }
    function B() public pure {
        x++;
    }
}
contract AB {
  function AB() {}
  receive() external payable {
  }
  function A() public payable {
  }
  function A(uint a) public payable {
      for (uint j = 0; j < a; j++) {
        x++;
      }
  }
  function B() public pure {
    x++;
  }
}

    contract AB {
        mapping(uint => bool) public bMap;
        mapping(bytes32 => address) public bMap2;
        function AB() { }
        function A() public { }
        function A(uint a) public pure {
          for (uint j = 0; j < a; j++) {
            bMap[j] = true;
          }
        }
        function B() public pure {

            bMap2[keccak256('B')] = address(this);
        }
        function B(address[] memory a) public pure {
          for (uint j = 0; j < a.length; j++) {
            bMap[uint(a[j])] = true;
          }
        }
        function B(uint[] memory a) public pure {
          for(uint i = 0; i < a.length; i++) {
              bMap[a[i]] = true;
          }
        }
        function B(address[] memory a, address[] memory b) public pure {
          for (uint j = 0; j < a.length; j++) {
            bMap[uint(a[j])] = true;
          }
        }
        function B(uint[] memory a, uint[] memory b) public pure {
          for(uint i = 0;

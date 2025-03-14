pragma solidity ^0.8.0;

 contract SemanticModificationDemo{
   uint256 public a;
   uint256 public b;
   function SemanticModificationDemo(uint256 s, uint256 i) public {

   }
}

pragma solidity ^0.8.0;
contract SemiSemaDemon{
    uint256 public a;
    uint256 public b;
    function SemiSemaDemon(uint256 s, uint256 i) public {
       a = s / i;
       b = a - a / i;
    }
}

pragma solidity ^0.8.0;
contract SemaDemon{
    uint256 public a;
    uint256 public b;
    function SemaDemon(uint256 s, uint256 i) public {
       a = s * i;
       b = (a - a / i);
    }
}

pragma solidity ^0.8.0;
contract SimpleSemaDemon{
    uint256 public a;
    uint256 public b;
    function SimpleSemaDemon(uint256 s, uint256 i) public {
       a = s;
       b = s / i;
    }
}

pragma solidity ^0.8.0;
contract SimpleSemaDemon2 {
    uint256 public a;
    uint256 public b;
    function SimpleSemaDemon2(uint256 s, uint256 i) public {
       a = (s * i) / i;
       b = s - a;
    }
}

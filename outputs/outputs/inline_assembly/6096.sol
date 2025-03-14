pragma solidity ^0.8.0;
contract OptimizedMutationAssemblyExample12 {

    struct Original {
      uint256 x;
    }
    function main() public pure {
        Original memory x;
        x.x++;
        x.x++;
    }
}
contract OptimizedMutationAssemblyExample13 {

    struct Original {
      uint256 x;
    }
    function main() public pure {
        Original memory x;
        x.x++;
        x.x++;

          {

          }

          }
        x.x--;
        x.x--;
    }
}

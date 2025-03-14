pragma solidity ^0.8.0;
contract SemanticsMutation
{
     function semanticMutation(uint256[] memory a) public pure {
    	uint256 b = 0;
    }

    function semanticMutation2(uint256[2] memory a) public pure {
    	uint256[2] memory b = new uint256[2](1);
    	b[0] = a;
    }
}
contract SemanticsMutation2
{
      function semanticMutation3(uint256 x) public pure {
      	uint256 t = a;
    }

    function semanticMutation4(uint256 x) public pure {



        if (t <= 2) {
            uint256 [4] memory s1 = a;
            uint256 [4] storage s1b = t1;

            uint256 s2 = b;
        }

    }
}
contract SemanticsMutation3
{
      function semanticMutation4(uint256 x) only owner public pure {

      }
    function semanticMutation5(uint256 x) external pure {
      uint256 [2] memory array = new uint256[](2);
      assembly {






        mstore_calldatacopy(s0, 0, 0x20);
      }
    }

    function semanticMutation6(uint256 x) public pure {
      	uint256 t = a;
      	uint256[2] memory t1 = new uint256[2](1);
    }
}
contract SemanticsMutation4
{
     function semanticMutationA(uint256 x) public pure {
      	x = 0;
    }
     function semanticMutationB(uint256 x) public pure {
      	if (x == 0) {
            uint256 y = 0;
            y = 255;
            x = y;
      	}
    }
}

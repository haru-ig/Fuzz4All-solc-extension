pragma solidity ^0.8.0;
contract semanticEquivalentMutation {
    uint[] memory result;
    address[1] memory not;
    function semanticEquivalentMutation() public  {
       {        uint i = 100;    }
       for (uint[] memory r; i < 200; i) {
           { result[i] = 1;       }
       }
    }
    function semanticEquivalentMutation2() public  {
        { result[100] = 1;        }
    }
}

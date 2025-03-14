pragma solidity ^0.8.0;
contract AssignmentModulation_V3 {
    function setPairs() public {
        x[0] = 1;
        x[1] = 1;
    }
}
pragma solidity ^0.8.0;
contract AssignmentModulation_V2 {
    function setPairs() public {
        for (uint i = 0; i < x.length; i++) {

            x[i] += 1;
        }
    }
}
pragma solidity ^0.8.0;
contract AssignmentModulation_V1 {
    uint public w;
    uint public z;
    constructor() public{
        w = 1;
        w = w + 1;
        w += w;
    }
    function setPairs_V1() public {
        x[0] = w + 1;
        x[1] = w;
    }
    function setPairs_V2() public {

      for (uint i = 0; i < x.length; i++) {

            x[i] += 1;
      }
    }
    function setPairs_V3() public {

      for (uint i = 0; i < x.length; i++) {

            x[i][i] += 1;
      }
    }
    function getAndStore() public returns (uint){
        return w;
    }
}
pragma solidity ^0.8.0;
contract AssignmentModulation_V0 {
    constructor() public{

    }
    function setPairs() public {
        w = 1;
        w = 2;
        w = 3;
    }
}

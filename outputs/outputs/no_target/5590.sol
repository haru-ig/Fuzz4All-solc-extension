pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        b - a;
        c = b / 5;
        return (a, c);
    }
}


pragma solidity ^0.8.0;
contract C3 {
    address constant A = 0xCAeADD53aA77674175A3C0B16c70E96990647B21;

    constructor() public {
    }


    function h(uint a, uint b) internal pure returns (uint){
        return 5;
    }

    function G(uint x, uint y) public pure returns (uint) {
        if(x > 1){
           return h(x, y);

        } else{
        return (x + 1) / (1 - x + 1);
       }
    }

    function F() public pure returns (uint) {
      uint a = 1;
        return G(a, -1);
    }
}

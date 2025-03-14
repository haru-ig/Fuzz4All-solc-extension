pragma solidity ^0.8.0;
contract Cold {
     function f(uint x) external returns (uint) {
         if (x == 0) {
            return 0x3;
         }
     }
}
pragma solidity ^0.8.0;
contract Hot {
     function g(uint x) external returns (uint) {
         if (x == 2) {
            return 0x0;
         }
     }
}
pragma solidity ^0.8.0;
contract ColdHot {
    uint public counter;
    function f(uint x) public returns (uint) {
         uint y;
         if (x == 0) {
             y = 0x1;
         } else {
             uint y;
             if (x == 1) {
                 y = 0x2;
             } else {
                 if (x == 2) {
                     y = 0x3;
                 } else {
                     y = 0x12;
                 }
             }
         }
         return y;
    }
}
contract Breed {
    uint time;


    constructor(uint n) {
        number = 2;



        time = block.timestamp;
    }

    function breed(uint n) public {


    }

    function check() public returns (uint) {
        return time;
    }
}
contract Germ {
    uint time;

    function germ(uint n) public {
        time = n;
    }
}
contract Wild {
    uint time;

    constructor(uint n) public {
        time = n;
    }

    function check() public returns (uint) {
        return time;
    }

    function germ(uint n) public {
        time = n + 1;
    }
}
contract Goblin {
    uint time;


    constructor(uint n) public {
        time = n;
    }

    function check() public returns (uint) {
        return time;
    }
}
contract BreedGame {
    uint public number;
    uint[] public game;

pragma solidity ^0.8.0;
contract Mutator {
    function f0(uint256 v1, uint256 v2, uint256, uint256 v3, uint256 v4, uint256 v5, uint256 v6) public {
        uint256 v7;
        v7 = (v1 + v2) - (v3 + v4);
        v7 = (v4 + v5) * (v5 + v6);
    }
}

pragma solidity ^0.8.0;
contract Contract {
    function contractAction(uint256) public pure {
        Mutation(this).f0(100, 200, 300, 400, 500, 600, 700);
    }
}

pragma solidity ^0.8.0;
contract Semantic {
    function semanticAction(uint256) public pure {
    }
}
contract Semantic2 is Semantic { }
contract Semantic3 is Semantic { }
contract Semantic4 is Semantic { }
contract Semantic5 is Semantic { }
contract Semantic6 is Semantic { }
contract Semantic7 is Semantic { }
contract Semantic8 is Semantic { }
contract Semantic9 is Semantic { }
contract Semantic10 is Semantic { }
contract Semantic11 is Semantic { }
contract Semantic12 is Semantic { }
contract Semantic13 is Semantic { }
contract Semantic14 is Semantic { }
contract Semantic15 is Semantic { }

contract Main {
    function f(uint256) public pure {
        Semantic2 sem2;
        sem2.semanticAction(700);
    }
}

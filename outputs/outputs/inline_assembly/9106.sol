pragma solidity ^0.8.0;
library Lib {
    uint a;
    uint b;
    function mutator(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }
    function geta( ) public pure returns (uint) {
        return a;
    }
    function getb( ) public pure returns (uint) {
        return b;
    }
}

pragma solidity ^0.8.0;
library Lib {
    function usinglib( ) public {
        Lib.mutator(Lib.geta(), Lib.getb());
    }
}

pragma solidity ^0.8.0;
library Lib {
    function usinglibmutator( ) public {
        Lib.mutator(Lib.geta(), Lib.getb());
    }
}

pragma solidity ^0.8.0;
library Lib {
    function usinglib( ) public {
        Lib.mutator(Lib.geta(), Lib.getb());
    }
}

pragma solidity ^0.8.0;
library Lib {
    uint a;
    uint b;
    function mutator(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }
    function geta(uint x) public pure returns (uint) {
        return a + x;
    }
    function getb(uint x) public pure returns (uint) {
        return b + x;
    }
}
contract Solidity_Example {
    uint a;
    uint b;
    function usinglibmutator(uint x) public {
        uint y = Lib.geta(x);
        uint z = Lib.getb(x);
        Lib.mutator(Lib.geta(x + y), Lib.getb(x + z));
    }
}

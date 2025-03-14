pragma solidity ^0.8.0;
contract SemanticEqual {
    function mutate() public pure {
        bool val = false;
        if (val) return
        {
        return
        }
    }
}
contract SemanticEqual2 {
    function mutate() public pure {
        bool val = false;
        {
            return
            false
            ;
        }
    }
    function mutate2() public pure {
        bool val = false;
        if(val) {
            return
            ;
        }
    }
}


contract SemanticEqual3 {
    function mutate() public pure {
        bool val1 = true;
        bool val2 = true;
        bool val3 = false;
    }
}
contract SemanticEqual4 {
    function mutate() public pure {
        bool val1 = true;
        bool val2 = false;
        bool val3 = true;
    }
}
contract SemanticEqual5 {
    function mutate() public pure {
        bool val1 = true;
        bool val2 = true;
        bool val3 = false;
    }
    function mutate2() public pure {
        bool val1 = true;
        bool val2 = false;
        bool val3 = true;
    }
}
contract SemanticEqual6 {
    function mutate() public pure {
        bool val1 = false;
        bool val2 = true;
        bool val3 = true;
    }
}
contract SemanticEqual7 {
    function mutate() public pure {
        bool val1 = true;
        bool val2 = false;
        bool val3 = false;
        bool val4 = true;
        bool val5 = false;
    }
}

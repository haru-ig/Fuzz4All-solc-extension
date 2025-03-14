pragma solidity ^0.8.0;
library TestLib {
    function log2(uint o_) public pure {
        revert();
    }
    function log3(uint o_) public pure {
        revert();
    }
    function log4(uint o_) public pure {
        revert();
    }
}

pragma solidity ^0.8.0;
library TestLib {
    function log1(uint8 o_) public pure {
        assert(o_ == 0);
    }
    function log2(uint o_) public pure {
        assert((o_) == 0);
    }
    function log3(uint o_) public pure {
        assert((o_) == 0);
    }
    function log4(uint o_) public pure {
        assert((o_) == 0);
    }
}

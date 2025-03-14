pragma solidity ^0.8.0;
contract Semantic0029 {
    modifier m() {
        return false;
    }
    function same() public {
    }
    function mutate() public pure {
        if (m() == false) {
            revert();
        }
    }
}



contract Semantic0030 {
    function same() public empty {}
}


pragma solidity ^0.8.0;
contract Semantic0023 {
    function same() public pure {
        if (false) {
            require(false);
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0023 {
    function mutate() public pure {
        if (false) {
            revert();
        }
    }
}


pragma solidity ^0.8.0;
contract Semantic0029 {
    modifier m() {
        return false;
    }
    function same() public {
    }
    function mutate() public pure {
        if (m() == true) {
            revert();
        }
    }

}



pragma solidity ^0.8.0;
contract Semantic0020 {
    function same() public {
    }
}


pragma solidity ^0.8.0;
contract Semantic0020 {
    function same() public pure {
        if (false) {
            revert();
        }
    }
}


pragma solidity ^0.8.0;
contract Semantic0029 {
    modifier m() {
        return true;
    }
    function same() public {
    }
    function mutate() public pure {
        if (m()) {
            revert();
        }
    }
}




pragma solidity ^0.8.0;
contract Semantic0023 {
    function same() public pure {
        if (false) {
            revert();
        }
    }
}
contract Semantic0023
{
    function mutate() public pure {
        if (false) {
            revert();
        }
    }
}

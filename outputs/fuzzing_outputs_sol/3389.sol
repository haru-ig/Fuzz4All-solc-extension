pragma solidity ^0.8.0;
contract C {
    function fallback() public pure {
        uint i = B.fallback();
        require(i == b"5", "Wrong data output in fallback function.");
    }
}");
    }
}

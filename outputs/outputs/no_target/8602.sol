pragma solidity ^0.8.0;
contract Old {
    function get(uint a_, uint b_) public view returns (uint256) {
        return b_;
    }
}

pragma solidity ^0.8.0;
contract Old {
    function get(uint a_) public view returns (uint256) {
        return a_;
    }
}

pragma solidity ^0.8.0;
contract Old {
    function get2(uint a_) public view returns (uint256) {
        return a_;
    }
}

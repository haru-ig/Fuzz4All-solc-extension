pragma solidity ^0.8.0;
contract E {
    uint256[1] memory c = [1];
    function setY(uint256[1] memory c_) public {
        c = c_;
    }
}
pragma solidity ^0.8.0;
contract E {
    uint256[] memory c = [1];
    function setY(uint256[] memory c_) public {
        c = c_;
    }
}
pragma solidity ^0.8.0;
contract E {
    uint256[1] storage c = [1];
    function setY(uint256[1] storage c_) public {
        c = c_;
    }
}
pragma solidity ^0.8.0;
contract E {
    uint32[1] memory c = [1];
    function setY(uint32[1] memory c_) public {
        c = c_;
    }
}

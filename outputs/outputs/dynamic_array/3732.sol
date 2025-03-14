pragma solidity ^0.8.0;
contract E {
    uint256[5] public c;
    function setY(uint256[5] memory c_) public {
        c = c_;
    }
}


pragma solidity ^0.8.0;


function setY(uint256[5] memory c_) public {
    c = c_;
}

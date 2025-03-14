pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balance2(uint256 _val) public pure {
        #if gas >= 5000
            uint256 x = 46;
        #end
        uint256 y = 46;
    }
}

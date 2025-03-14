pragma solidity ^0.8.0;
contract Semantic2ChangedB is Semantic2Changed {
    function balance2(uint256 _val) public view virtual pure {
        uint256 x = 46;
    }
}

pragma solidity ^0.8.0;
contract Semantic2Changed {
    uint256 constant x = 46;
}

pragma solidity ^0.8.10;
contract Semantic2ChangedB is Semantic2Changed {
    uint256 constant x= 46;
}

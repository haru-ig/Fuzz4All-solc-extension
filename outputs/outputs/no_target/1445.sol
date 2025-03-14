pragma solidity ^0.8.0;
contract Semantic0031 {
    function notMutant() public pure {
        require(false);
    }
}
contract Semantic0031 {
    function notMutant() public pure {
        require(!false);
    }
}
contract Semantic0031 {
    function notMutant() public pure {
        require(true == false);
    }
}
contract Semantic0032 {
    function mutant() public pure {
        require(true == true);
    }
}

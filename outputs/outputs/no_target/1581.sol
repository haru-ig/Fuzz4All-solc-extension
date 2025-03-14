pragma solidity ^0.8.0;
contract Semantic0002 {
    function equal() public pure {
        address x = address(0);
        x++ > 0;
        (address(x)++ < x);
    }
}

pragma solidity ^0.8.0;
contract Semantic0003 {
    function read() public pure {
        uint256[] b;
        for(uint256 i = 0; i < 5; i++){
            b[i] ++ >=1;
        }
    }
}

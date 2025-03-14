pragma solidity ^0.8.0;
contract Memory {
}

pragma solidity ^0.8.0;
library Memory {
    function getArray(uint[] memory a){
        uint x;
        assembly {
            x := a
        }
        return x;
    }
}

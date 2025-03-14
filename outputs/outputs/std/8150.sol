pragma solidity ^0.8.0;
contract ArrayElements {
}
contract Memory{
}
pragma solidity ^0.8.0;
library Array {

    function lengthStorage() internal pure returns(uint storage){ return 0; }



    function get(uint memory memory) internal pure returns(uint[3] memory){
        return [1, 2, 3];
    }
}

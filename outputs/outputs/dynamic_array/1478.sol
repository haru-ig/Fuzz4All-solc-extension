pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType1 {
    uint256[2][3][4][5][][][5] array3;
    function Fatal() public {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {
                for(uint l = 0; l< 3; l++) {
                array3.push(new uint256[2][2][2][][](i,j,k,l));
                }
            }
        }
    }
}

pragma solidity ^0.8.0;



pragma solidity ^0.8.0;



pragma solidity ^0.8.0;



pragma solidity ^0.8.0;



pragma solidity ^0.8.0;

 library RevertUtil {


    function Revert(string memory msg) internal pure {

        assembly { revert(add(32, returndata), returndata_size()) } ;
    }
}

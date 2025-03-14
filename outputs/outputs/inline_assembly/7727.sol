pragma solidity ^0.8.0;
import "https://www.npmjs.com/package/hardhat/console.sol";
contract L20 {
        function sub(uint256 x, uint256 y) public pure {
                x = x + 1;
        }
}

pragma solidity ^0.8.0;
contract L20 {
        function sub(uint256 x, uint256 y) public pure {


                assembly {
                        let a := x
                    }
        }
}

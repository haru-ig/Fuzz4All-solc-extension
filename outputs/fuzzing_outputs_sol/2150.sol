pragma solidity ^0.8.0;
interface Mutator32493 {
    function mutate(address payable _to) external returns (bool success);
}

pragma solidity ^0.8.0;
import "./Mutator32493.sol";
import "hardhat/console.sol";
contract Caller384 {
    Mutator32493 mut = Mutator32493(address(0x68312D102803a53c3A4d3B3Fc4225181A631352C));
    address payee = payable(address(0x7c96ea540A12583d0a8322b6DD3D757d2E078678));
    constructor() {
    }
    function main() public {
        console.log("caller.main()");
        mut.mutate(payee);
    }
    fallback() external payable {
    }
}

address payable 0x7c96ea540A12583d0a8322b6DD3D757d2E078678
Caller.main()

address 0x7c96ea540A12583d0a8322b6DD3D757d2E078678
*/
contract Mutator379 {
    function getState() public pure returns (string memory) {
        return "test";
    }
}

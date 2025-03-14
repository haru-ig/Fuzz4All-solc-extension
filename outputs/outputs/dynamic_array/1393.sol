pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck16 is SemanticallyEquivalentMutatedDynamicArrayTypeCheck15 {
    uint[] dynamicArray;
}

contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck17 {
    uint[] public array1;

    function() external {
        array1.push(1);
    }
}





pragmata solidity 0.8.0;
import "./Lib.sol";
import "openzeppelin-solidity/contracts/utils/introspection/ERC165.sol";

import { IERC165 } from "openzeppelin-solidity/contracts/ERC165.sol";

abstract contract ERC165 is IERC165 {


    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool);
}




pragma solidity 0.8.0;



contract IPayable {
    function payable_fallback() public payable {}
}



import "@openzeppelin/contracts/utils/introspection/ERC165.sol";





abstract contract IERC165 is ERC165 {}

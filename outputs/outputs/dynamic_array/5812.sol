pragma solidity ^0.8.0;
contract Test1800E {
    uint[] public array;
    uint[] private array2;
    constructor () public   {
        array = new uint[](0);
    }
}
pragma solidity 0.7.6;


interface IERC721Receiver {

    function safeTransferFrom(address operator, address from, address to, uint256 tokenId) external returns (bytes4 retval);
}
pragma solidity 0.7.6;

abstract contract testChild extends Base {
    function getChildValue() public virtual view returns (uint256) {
        return 123;
    }
}
pragma solidity 0.7.6;

import "../TestChild.sol";
contract Test1801 {
    function test1801() public view {
        uint256 _child1 = address(this).balance;
    }
    function test1801Child() public virtual view returns (uint256) {
        uint256 _child2 = testChild().getChildValue();
    }
}

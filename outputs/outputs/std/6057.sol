pragma solidity ^0.8.0;
#
#  File: @openzeppelin/contracts/utils/Address.sol
#     SPDX-License-Identifier: MIT
#

pragma solidity ^0.8.0;


abstract contract Context {
    constructor () internal { }

    function msgSender() virtual public view returns (address) {
        return _msgSender();
    }

    function _msgSender() virtual internal view returns (address) {
        return msg.sender;
    }
}
#
#  File: array_sol/Array.sol
#


pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Array is Context, IArray0 {
    function count() public view virtual override returns (uint) {
        ERC721 token = ERC721(address(this));
        address user = ERC721(address(0)).ownerOf(address(this));
        return token.balanceOf(user).sub(1);
    }

    function get(uint arg) public view virtual override returns (uint) {
        return ArrayTest0.getItem(arg +1);
    }

    function set(uint arg, uint _value) public virtual override returns (uint) {
        ArrayTest0.setItem(arg +1,_value);
        return 1;
    }

    function append(uint _value) public virtual override returns (uint) {
        ArrayTest0.addItem(_value);
        return ArrayTest0.countItems() -1;
    }

    function min() public view virtual override returns

pragma solidity ^0.8.0;
contract IERC20 is IERC20 {
    function balanceOf(address account) public view returns (uint);
}

pragma solidity ^0.8.0;
contract IERC20 is IERC20 {
    function transfer(address to, uint256 value) public view returns (bool success) { revert(string(abi.encodePacked(to, ": ", value))); }
    function balanceOf(address account) public view returns (uint) { revert(string(abi.encodePacked(account, ": balance of ", address(this).balance))); }
    function allowance(address owner, address spender) public view returns (uint) { revert(string(abi.encodePacked(owner, ": allowance of ", spender, " for ", address(this).transferFrom(owner, spender, uint(0)))))); }
    function approve(address spender, uint256 value) public view returns (bool success) { revert(string(abi.encodePacked(spender, ": approve: ", uint(value)))); }
    function mint() public { revert(string(abi.encodePacked(address(this), ": mint"))); }
    function burn(uint amount) public { revert(string(abi.encodePacked(address(this), ": burn: ", amount))); }
    function burnFrom(address account, uint amount) public { revert(string(abi.encodePacked(address(this), ": burnFrom: ", account, "(", amount, ")"))); }
    function burning() public view returns (uint total) { revert(string(abi.encodePacked(address(this), ": burning (): burning?"))); }
}
